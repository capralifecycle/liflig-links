FROM nginx:1.13-alpine@sha256:9d46fd628d54ebe1633ee3cf0fe2acfcc419cfae541c63056530e39cd5620366

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
