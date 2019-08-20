FROM nginx:1.17-alpine@sha256:e0f88b21626f56e5d9e038da863aee331640efb03ca7d8f453ed8243343acfaa

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
