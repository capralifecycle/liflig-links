FROM nginx:1.25-alpine@sha256:02d8d94023878cedf3e3acc55372932a9ba1478b6e2f3357786d916c2af743ba

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
