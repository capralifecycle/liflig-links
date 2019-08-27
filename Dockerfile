FROM nginx:1.17-alpine@sha256:99be6ae8d32943b676031b3513782ad55c8540c1d040b1f7b8c335c67a241b06

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
