FROM nginx:1.23-alpine@sha256:dd8a054d7ef030e94a6449783605d6c306c1f69c10c2fa06b66a030e0d1db793

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
