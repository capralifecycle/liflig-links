FROM nginx:1.24-alpine@sha256:b7db705c8986070be8aa99ec0886886ddb3c75b1e46301f54865b16db79e9e52

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
