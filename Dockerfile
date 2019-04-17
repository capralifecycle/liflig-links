FROM nginx:1.15-alpine@sha256:49387a0b2f853d08b9e66c9bbc515f306fe3cc377966d4289a309ebf4040825b

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
