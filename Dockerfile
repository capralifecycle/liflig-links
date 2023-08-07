FROM nginx:1.25-alpine@sha256:8ccc2ec1dcc960870d3f13b2f2eaa9d47e3b7e2f4d5dc4e7bbcd6e08f563e01a

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
