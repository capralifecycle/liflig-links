FROM nginx:1.25-alpine@sha256:d9a9775bf320ba122af5aaa93d68d0c2f4781f311830c8386b060c37bfeb832b

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
