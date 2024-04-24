FROM nginx:1.26-alpine@sha256:ca16009a8c25f52193506d4c90c98efbad4b6cbe73372e2a27972f05c5e02f15

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
