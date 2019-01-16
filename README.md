# [capra.tv](https://capra.tv)

[![Build Status](https://jenkins.capra.tv/buildStatus/icon?job=capra-tv/master)](https://jenkins.capra.tv/job/capra-tv/job/master/)

This repository contains the server and files serving https://capra.tv.
The web page provides some quick links that can be used to access resources
for CALS.

It's mostly set up to provide an example for a simple container and for
deploying automatically to AWS.

## Testing the build

To test the build locally:

```bash
./test.sh
```
## Running locally

```bash
docker-compose up --build web
```

http://localhost:8000
