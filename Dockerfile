FROM nginx:1.27-alpine@sha256:9b460c5ee96333b43a92df16351e150af717ad6522101e52d05d255cd7241064

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
