#!/bin/bash
set -eu

docker build -t capra-tv-test .

./test-image.sh capra-tv-test
