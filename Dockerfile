FROM nginxinc/nginx-unprivileged:1.31-alpine@sha256:19c132c9ab02d3b783f478743dafc7a7f42e27aa7d2bdcbec1bb1128ca8f2a07

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
