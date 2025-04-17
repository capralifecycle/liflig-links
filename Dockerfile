FROM nginx:1.27-alpine@sha256:65645c7bb6a0661892a8b03b89d0743208a18dd2f3f17a54ef4b76fb8e2f2a10

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
