FROM nginx:1.21-alpine@sha256:a74534e76ee1121d418fa7394ca930eb67440deda413848bc67c68138535b989

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
