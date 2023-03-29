FROM nginx:1.23-alpine@sha256:13af24a0003b1e7118f61f6f74602680aa6250a73567095da57bd2af8b67fea1

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
