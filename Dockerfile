FROM nginx:1.15-alpine@sha256:f8884e3c02796ec2174366a0f2331ceeedd8babbc0ac5f743fb562944e3d3871

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
