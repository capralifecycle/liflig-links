FROM nginx:1.15-alpine@sha256:9203c9e197884039e2fc80561e11edb947c73eeabcd99791c2e366c333f78ee5

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
