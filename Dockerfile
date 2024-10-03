FROM nginx:1.27-alpine@sha256:2140dad235c130ac861018a4e13a6bc8aea3a35f3a40e20c1b060d51a7efd250

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
