#!/bin/bash
set -eu

docker build -t liflig-links .

./test-image.sh liflig-links
