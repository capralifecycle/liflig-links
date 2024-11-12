FROM nginx:1.27-alpine@sha256:110fd73d932a737a359d26c233085ff648dc09e1a99bb65d9032d5fd0c2dce11

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
