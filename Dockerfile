FROM nginx

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
