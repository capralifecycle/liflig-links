FROM nginx:1.25-alpine@sha256:05ca8fa605c636a607b81ec05e92ea53eae1a37ce45eb630280d8867187da56f

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
