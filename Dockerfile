FROM nginx:1.23-alpine@sha256:044441a2f81e4cfc98c9d740c1b73ed7313dec240298161ec360e036c3ba218e

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
