FROM nginx:1.27-alpine@sha256:5c0c2272256857e486cf9fe2983db41c0e14c72476f5ebedf474289fd9ca8627

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
