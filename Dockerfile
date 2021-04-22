FROM nginx:1.20-alpine@sha256:e015192ec74937149dce3aa1feb8af016b7cce3a2896246b623cfd55c14939a6

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
