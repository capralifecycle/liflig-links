FROM nginx:1.25-alpine@sha256:f2802c2a9d09c7aa3ace27445dfc5656ff24355da28e7b958074a0111e3fc076

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
