FROM nginx:1.21-alpine@sha256:1c5711ad6eb3324dde0c429a6add14607b16b158d5bd44e026ae197969e5fc1f

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
