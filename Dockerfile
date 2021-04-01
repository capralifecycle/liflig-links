FROM nginx:1.19-alpine@sha256:68cee97b81e8673a1d0aeb62f41c2d77f736ff8117db2b407a8c34c942b92687

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
