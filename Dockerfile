FROM nginx:1.27-alpine@sha256:41523187cf7d7a2f2677a80609d9caa14388bf5c1fbca9c410ba3de602aaaab4

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
