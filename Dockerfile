FROM nginx:1.25-alpine@sha256:e9e0c3a702f02406384e0d7b0a1d4e7aa7fbc3c92c2ef158b183df73f185792b

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
