FROM nginx:1.29-alpine@sha256:f741b7f2e82ec8e3daa163b089d48ec163ad0b015d859a1e4f0f2a6202e8cc22

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
