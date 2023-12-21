FROM nginx:1.25-alpine@sha256:ba48c86adff12f1849920b6175c328b58b589f68feb082de8677309718945a56

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
