FROM nginx:1.25-alpine@sha256:2d194184b067db3598771b4cf326cfe6ad5051937ba1132b8b7d4b0184e0d0a6

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
