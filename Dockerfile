FROM nginx:1.27-alpine@sha256:cc67561ba7e821f9fa7b5cb4a235014a685c01af3e9acf87182a1891ec507e46

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
