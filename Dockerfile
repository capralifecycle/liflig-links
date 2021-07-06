FROM nginx:1.21-alpine@sha256:8ec096df17613c8a74f9e8df9e5fcad37c3db6bb82aac7904f2f147d21773413

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
