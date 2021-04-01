FROM nginx:1.19-alpine@sha256:d8da873105d3eb0d1e59f188b90ec412409ac213c63c0652d287fc2e9f9b6178

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
