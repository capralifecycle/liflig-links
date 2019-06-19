FROM nginx:1.17-alpine@sha256:d26f640031242d5b08dff39eb53e54f54a1cb48a6e3aaf24e90769e3bd5db177

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
