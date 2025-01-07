FROM nginx:1.27-alpine@sha256:4efa432b751239898e576a2178702fb156fc483f6d456e0ad5899b3bf5c0445a

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
