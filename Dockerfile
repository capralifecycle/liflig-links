FROM nginx:1.19-alpine@sha256:a033d30ab2c1183a8b865f5ac3d56b10593421340298b89cc7b81ec9d6a4c2ce

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
