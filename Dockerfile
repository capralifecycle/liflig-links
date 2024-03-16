FROM nginx:1.25-alpine@sha256:0fefd803183ec3a8010fa9b2dab6c3a8445642f013a7b5f29e12b8634f67bd22

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
