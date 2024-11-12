FROM nginx:1.27-alpine@sha256:d44ffb126f474dfbe8b729d4a984d8d798110637560a8db41979461db6f761d2

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
