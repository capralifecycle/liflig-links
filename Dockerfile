FROM nginx:1.29-alpine@sha256:b2e814d28359e77bd0aa5fed1939620075e4ffa0eb20423cc557b375bd5c14ad

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
