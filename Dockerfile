FROM nginx:1.21-alpine@sha256:ba39aed615e51956312a345837b6316681504fb52452edc0e9f671fd88472dc5

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
