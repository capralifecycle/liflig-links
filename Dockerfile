FROM nginx:1.25-alpine@sha256:2e776a66a3556f001aba13431b26e448fe8acba277bf93d2ab1a785571a46d90

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
