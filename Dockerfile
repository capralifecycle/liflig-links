FROM nginx:1.29-alpine@sha256:2459838ed006e699c252db374550c91490068bbf3b35fa8b9d29bfe0e31b8b95

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
