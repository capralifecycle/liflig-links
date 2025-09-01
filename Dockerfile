FROM nginx:1.29-alpine@sha256:42a516af16b852e33b7682d5ef8acbd5d13fe08fecadc7ed98605ba5e3b26ab8

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
