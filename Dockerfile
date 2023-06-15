FROM nginx:1.25-alpine@sha256:9b0582aaf2b2d6ffc2451630c28cb2b0019905f1bee8a38add596b4904522381

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
