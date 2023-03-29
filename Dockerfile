FROM nginx:1.23-alpine@sha256:ff07dba791a114f5d944c8455e8236ca4b184bfd8d21d90b7755a4ba0a119b06

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
