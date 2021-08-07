FROM nginx:1.21-alpine@sha256:bead42240255ae1485653a956ef41c9e458eb077fcb6dc664cbc3aa9701a05ce

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
