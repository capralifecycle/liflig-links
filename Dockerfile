FROM nginx:1.27-alpine@sha256:74175cf34632e88c6cfe206897cbfe2d2fecf9bf033c40e7f9775a3689e8adc7

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
