FROM nginx:1.27-alpine@sha256:a5127daff3d6f4606be3100a252419bfa84fd6ee5cd74d0feaca1a5068f97dcf

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
