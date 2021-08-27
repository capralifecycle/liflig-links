FROM nginx:1.21-alpine@sha256:fe09841bced7c985c977758dd64329f0d1f111b75045b4a8dd25954e1ae180a2

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
