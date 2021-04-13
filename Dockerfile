FROM nginx:1.19-alpine@sha256:43aee115b798c2e923473f22e08c7abd715ad252262953f7da1c6a13f8c5a5c8

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
