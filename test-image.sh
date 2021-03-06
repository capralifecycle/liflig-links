#!/bin/sh
set -eu

if [ -z "$1" ]; then
  echo "Syntax: $0 <image-id>"
  exit 1
fi

container_logs() {
  cat - | sed 's/^/service: /'
}

image_id="$1"

# Use unix time to simulate a random value, /dev/urandom might be unstable
run_id=$(date +%s | base64 | tr -dc 'a-zA-Z0-9' | fold -w 16)
network_name="build-test-$run_id"
echo "Docker network name: $network_name"
network_id=$(docker network create $network_name)

# Avoid running in daemon mode so that we can get the logs more easily.
container_name="build-run-$run_id"
(docker run --rm --network-alias=nginx --network $network_id --name $container_name "$image_id" | container_logs) &

cleanup() {
  echo "Cleaning up resources"
  docker stop $container_name || :
  docker network rm $network_name || :
}

trap cleanup EXIT

max_wait=10
wait_interval=2
echo "Polling for service to be up.. Trying for $max_wait iterations of $wait_interval sec"

ok=0
start=$(date +%s)
for x in $(seq 1 $max_wait); do
  if docker run -i --rm --network $network_id byrnedo/alpine-curl -fsS nginx >/dev/null; then
    ok=1
    break
  fi
  sleep $wait_interval
done

if [ $ok -eq 0 ]; then
  echo "Waiting for service to boot failed"
  exit 1
fi

end=$(date +%s)
echo "Took $((end-start)) seconds for service to boot up"

# Verify we get expected content

content=$(docker run -i --rm --network $network_id byrnedo/alpine-curl -fsS nginx)

if ! echo "$content" | grep -q "Liflig"; then
  echo "Expected text not found in resource"
  echo "Received:"
  echo "$content"
  exit 1
else
  echo "Everything seems fine!"
fi
