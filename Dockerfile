FROM nginx:1.23-alpine@sha256:7f01646baf70c28a99fc1c78b827d1942ba097daf693f1991daaeecd3c3dcc83

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
