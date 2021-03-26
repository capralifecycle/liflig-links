FROM nginx:1.19-alpine@sha256:98372844c896bb432da732f413145099cebb372ee3d3a67c4edc9b0022b19208

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
