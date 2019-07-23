FROM nginx:1.17-alpine@sha256:482ead44b2203fa32b3390abdaf97cbdc8ad15c07fb03a3e68d7c35a19ad7595

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
