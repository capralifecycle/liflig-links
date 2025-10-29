FROM nginx:1.29-alpine@sha256:9dacca6749f2215cc3094f641c5b6662f7791e66a57ed034e806a7c48d51c18f

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
