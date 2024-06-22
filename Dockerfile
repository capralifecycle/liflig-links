FROM nginx:1.27-alpine@sha256:a45ee5d042aaa9e81e013f97ae40c3dda26fbe98f22b6251acdf28e579560d55

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
