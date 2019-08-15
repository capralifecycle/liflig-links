FROM nginx:1.17-alpine@sha256:791f7ce4ff061b3c0a2788851d016643528f94c0d8a97503c6893e16144117e6

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
