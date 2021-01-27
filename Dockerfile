FROM nginx:1.19-alpine@sha256:c2ce58e024275728b00a554ac25628af25c54782865b3487b11c21cafb7fabda

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
