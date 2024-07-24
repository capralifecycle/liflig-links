FROM nginx:1.27-alpine@sha256:208b70eefac13ee9be00e486f79c695b15cef861c680527171a27d253d834be9

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
