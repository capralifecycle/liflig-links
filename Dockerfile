FROM nginx:1.15-alpine@sha256:9844a3ec6a6650490061efb83bd34b68d897bca4bca11cefb0acbab0917d0e02

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
