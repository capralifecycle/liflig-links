FROM nginx:1.21-alpine@sha256:f01a7a92c6b7ab134b3a924a0c9b0b487bfb890d1563773fefc2229ce55e4ca3

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
