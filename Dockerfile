FROM nginx:1.23-alpine@sha256:4a846cc240449c53c8ae24269ba6bcaee5167d8ad75cd2a8d8ba422b7c726979

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
