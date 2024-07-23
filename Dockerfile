FROM nginx:1.27-alpine@sha256:1e67a3c8607fe555f47dc8a72f25424b10273639136c061c508628da3112f90e

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
