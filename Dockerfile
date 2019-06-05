FROM nginx:1.16-alpine@sha256:04f8a19fce675089ee30c3058868e33a5ea113a011835b667062048a6e7109e0

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
