FROM nginx:1.15-alpine@sha256:55390addbb1a2b82e6ffabafd72e0f5dfbc8f86c2e7d9f41fb914cca537bd500

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
