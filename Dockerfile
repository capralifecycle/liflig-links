FROM nginx:1.23-alpine@sha256:8e38930f0390cbd79b2d1528405fb17edcda5f4a30875ecf338ebaa598dc994e

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
