FROM nginx:1.19-alpine@sha256:966f134cf5ddeb12a56ede0f40fff754c0c0a749182295125f01a83957391d84

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
