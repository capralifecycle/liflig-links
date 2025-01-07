FROM nginx:1.27-alpine@sha256:8339b5a8de737061adfdcf2eeeeeacdb031b51a99b89594b3b38de27da4d21f1

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
