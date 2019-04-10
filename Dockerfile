FROM nginx:1.15-alpine@sha256:a7ac80dc562569ddee0f744d96a0fc452cfe5d77c4e1b7b4941e601f5dd4b130

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
