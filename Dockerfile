FROM nginx:1.27-alpine@sha256:814a8e88df978ade80e584cc5b333144b9372a8e3c98872d07137dbf3b44d0e4

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
