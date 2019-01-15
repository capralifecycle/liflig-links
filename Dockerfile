FROM nginx:1.15-alpine@sha256:385fbcf0f04621981df6c6f1abd896101eb61a439746ee2921b26abc78f45571

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
