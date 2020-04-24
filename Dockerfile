FROM nginx:1.17-alpine@sha256:630d39f3970740583f96ec6b26cc7b0f531c35a5c2068c551f02f5236b1e373f

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
