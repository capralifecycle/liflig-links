FROM nginx:1.23-alpine@sha256:a4b232931983ed3a52d9fd150cf7de95ff1af8a147a279700beeae5f454bf5ae

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
