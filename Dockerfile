FROM nginx:1.19-alpine@sha256:14536d83ca3128923ee7c2f7f4f285e023abd40f3ccdc8911f56cd4119558506

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
