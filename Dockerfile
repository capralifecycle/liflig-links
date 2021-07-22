FROM nginx:1.21-alpine@sha256:ad14f3471c0fd650022d3d2ff370e02c51113679070486e510dfcbe64d00565a

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
