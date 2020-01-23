FROM nginx:1.17-alpine@sha256:fa266689d339b47a4a9d1148015d4bc5c4914d3d7e3ec061d85aa8813dfd485c

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
