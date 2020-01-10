FROM nginx:1.17-alpine@sha256:2911ad2d54f4cf4dc7ad21af122c1eefce16836a34be751c63351ca1fb452d57

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
