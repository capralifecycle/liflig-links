FROM nginx:1.16-alpine@sha256:a22995cadd5e4f41eca4d14c282908e3ffa4652ebf40ebf5cf2d1c3963febd8a

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
