FROM nginx:1.17-alpine@sha256:17bd1698318e9c0f9ba2c5ed49f53d690684dab7fe3e8019b855c352528d57be

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
