FROM nginx:1.25-alpine@sha256:630f82e85ce86906b5afefce8342b1389b1af3e1840259eedd8db97971378daf

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
