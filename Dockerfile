FROM nginx:1.27-alpine@sha256:b471bb609adc83f73c2d95148cf1bd683408739a3c09c0afc666ea2af0037aef

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
