FROM nginx:1.25-alpine@sha256:7bd88800d8c18d4f73feeee25e04fcdbeecfc5e0a2b7254a90f4816bb67beadd

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
