# liflig-links

This repository contains the server and files serving https://liflig.io.
The web page provides some quick links that can be used to access resources
for Liflig.

It's partly also set up to provide an example for a simple container and for
deploying automatically to AWS. This is why it actually runs ECS and not
only put on S3.

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
