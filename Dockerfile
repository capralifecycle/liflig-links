FROM nginx:1.29-alpine@sha256:56c93b2a17e185519a5f420173f899783f0890da60463011c59ddbb904f02093

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
