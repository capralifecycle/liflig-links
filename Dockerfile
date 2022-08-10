FROM nginx:1.23-alpine@sha256:c1b0849508fe00ded75824a48c28c51bd0818b335a50aba1c904b13942b9422f

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
