FROM nginx:1.23-alpine@sha256:2452715dd322b3273419652b7721b64aa60305f606ef7a674ae28b6f12d155a3

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
