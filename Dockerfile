FROM nginx:1.19-alpine@sha256:4635b632d2aaf8c37c8a1cf76a1f96d11b899f74caa2c6946ea56d0a5af02c0c

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
