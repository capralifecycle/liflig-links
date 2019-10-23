FROM nginx:1.17-alpine@sha256:b4c0378c841cd76f0b75bc63454bfc6fe194a5220d4eab0d75963bccdbc327ff

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
