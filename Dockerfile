FROM nginx:1.17-alpine@sha256:d48cc9a02c191ba23418522d468b3c75ed287e23018a6b6ff64043e264b5a394

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
