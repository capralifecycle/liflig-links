FROM nginx:1.27-alpine@sha256:e4efffc3236305ae53fb54e5cd76c9ccac0cebf7a23d436a8f91bce6402c2665

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
