FROM nginx:1.27-alpine@sha256:d68d230c2c7f0b28c7e5f17ed66d521deeba23aa467568202af72f7f7f61cd94

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
