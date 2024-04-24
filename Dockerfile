FROM nginx:1.25-alpine@sha256:fdbfdaea4fc323f44590e9afeb271da8c345a733bf44c4ad7861201676a95f42

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
