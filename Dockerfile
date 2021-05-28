FROM nginx:1.21-alpine@sha256:0f8595aa040ec107821e0409a1dd3f7a5e989501d5c8d5b5ca1f955f33ac81a0

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
