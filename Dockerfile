FROM nginx:1.21-alpine@sha256:686aac2769fd6e7bab67663fd38750c135b72d993d0bb0a942ab02ef647fc9c3

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
