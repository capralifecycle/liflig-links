FROM nginx:1.25-alpine@sha256:363e10bd564f68a966d3fd3e5e59b701f8d0e36b68ef8517d0527bf7e844092c

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
