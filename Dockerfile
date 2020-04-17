FROM nginx:1.17-alpine@sha256:62a9ebe5ddcb7e60ebb3318db58b327035796086536aa770b0f196ac22873767

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
