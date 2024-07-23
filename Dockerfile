FROM nginx:1.27-alpine@sha256:fbb400a7f82655026d277472e27b1668fcdec84eaf4d0045f3bf86e0092826b3

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
