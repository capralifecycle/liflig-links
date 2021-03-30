FROM nginx:1.19-alpine@sha256:dcb917cfe53d7901c07892d676a3b1b6c4b3ee75e5308f27e0345e8aaf30617e

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
