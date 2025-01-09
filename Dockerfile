FROM nginx:1.27-alpine@sha256:c57a9266c889f16dd593e1f8856cd449753e9c226f20777b70c0c39139fa51fd

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
