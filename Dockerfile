FROM nginx:1.25-alpine@sha256:31bad00311cb5eeb8a6648beadcf67277a175da89989f14727420a80e2e76742

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
