FROM nginx:1.23-alpine@sha256:61deb7ea1dee3781b6f069bd27ed13a8c50d1a5cfcea70c862113a3f7e3ae030

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
