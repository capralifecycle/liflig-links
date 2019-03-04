FROM nginx:1.15-alpine@sha256:816a226b57bb45b6388670b15f1adb60d83240857b2a0d476dd3f0d8d231799d

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
