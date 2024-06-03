FROM nginx:1.27-alpine@sha256:69f8c2c72671490607f52122be2af27d4fc09657ff57e42045801aa93d2090f7

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
