FROM nginx:1.25-alpine@sha256:5b7ff23e6861b908f034b82d2cf77a295488e0d13271e5438ac211fcf9ed9b25

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
