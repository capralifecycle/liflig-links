FROM nginx:1.19-alpine@sha256:e20c21e530f914fb6a95a755924b1cbf71f039372e94ac5ddcf8c3b386a44615

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
