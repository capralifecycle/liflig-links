FROM nginx:1.16-alpine@sha256:ae7ca0d28159a210f949fe1f430646cbff7f64581d1e5440adccc9bbb46367a5

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
