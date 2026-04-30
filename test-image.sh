#!/bin/sh
set -eu

if [ $# -eq 0 ]; then
  echo "Syntax: $0 <image-id>"
  exit 1
fi

container_logs() {
  cat - | sed 's/^/service: /'
}

image_id="$1"

echo "==> Testing image: $image_id"

# Random suffix so parallel runs don't collide on docker network/container names.
run_id=$(head -c 12 /dev/urandom | base64 | tr -dc 'a-zA-Z0-9' | head -c 16)
network_name="build-test-$run_id"
container_name="build-run-$run_id"

echo "==> Creating docker network: $network_name"
network_id=$(docker network create $network_name)

finish() {
  rc=$?
  echo "==> Cleaning up"
  docker stop $container_name || :
  docker network rm $network_name || :
  if [ "$rc" -eq 0 ]; then
    echo "==> PASS: image responds and content matches"
  else
    echo "==> FAIL: test exited with status $rc"
  fi
}
trap finish EXIT

# Avoid running in daemon mode so that we can get the logs more easily.
echo "==> Starting container: $container_name"
(docker run --rm --network-alias=nginx --network $network_id --name $container_name "$image_id" | container_logs) &

max_wait=10
wait_interval=2
echo "==> Waiting for nginx to respond (up to $((max_wait * wait_interval))s)"

ok=0
start=$(date +%s)
for x in $(seq 1 $max_wait); do
  if docker run -i --rm --network $network_id byrnedo/alpine-curl -fsS nginx >/dev/null 2>&1; then
    ok=1
    break
  fi
  printf '.'
  sleep $wait_interval
done
echo

if [ $ok -eq 0 ]; then
  echo "FAIL: service did not respond within $((max_wait * wait_interval))s"
  exit 1
fi

end=$(date +%s)
echo "==> nginx ready after $((end-start))s"

# Verify we get expected content
echo "==> Checking response body for 'Liflig'"
content=$(docker run -i --rm --network $network_id byrnedo/alpine-curl -fsS nginx)

if ! echo "$content" | grep -q "Liflig"; then
  echo "FAIL: expected 'Liflig' in response body, got:"
  echo "$content"
  exit 1
fi
