FROM nginx:1.21-alpine@sha256:1b68400cbeec3d5334edcb8606b2ac4badc9b0401cc209e8941853aec332efea

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
