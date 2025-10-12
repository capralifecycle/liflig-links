FROM nginx:1.29-alpine@sha256:61e01287e546aac28a3f56839c136b31f590273f3b41187a36f46f6a03bbfe22

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
