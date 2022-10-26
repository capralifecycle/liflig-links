FROM nginx:1.23-alpine@sha256:b433a017703c4a866c44620ed97f603555dee677756ae24df13a4329276fc0fd

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
