FROM nginx:1.21-alpine@sha256:85703b43b225d57d2015bc44e66880f2ed2d91df79373045d810b024a05a808d

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
