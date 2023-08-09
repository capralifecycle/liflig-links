FROM nginx:1.25-alpine@sha256:647c5c83418c19eef0cddc647b9899326e3081576390c4c7baa4fce545123b6c

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
