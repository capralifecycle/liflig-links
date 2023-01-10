FROM nginx:1.23-alpine@sha256:659610aadb34b7967dea7686926fdcf08d588a71c5121edb094ce0e4cdbc45e6

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
