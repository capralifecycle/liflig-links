FROM nginx:1.23-alpine@sha256:9c2030e1ff2c3fef7440a7fb69475553e548b9685683bdbf669ac0829b889d5f

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
