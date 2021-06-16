FROM nginx:1.21-alpine@sha256:6d76a25a64f6a9a873bded796761bf7a1d18367570281d73d16750ce37fae297

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
