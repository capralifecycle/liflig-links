FROM nginx:1.17-alpine@sha256:366c39a589f69a893368d942d9d323893025e8c27a523657ba3a2119dfc66057

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
