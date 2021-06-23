FROM nginx:1.21-alpine@sha256:cc8c413c74aba9fef9dae7f3da736725136bad1e3f24fbc93788aea1944f51c4

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
