FROM nginx:1.25-alpine@sha256:7272a6e0f728e95c8641d219676605f3b9e4759abbdb6b39e5bbd194ce55ebaf

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
