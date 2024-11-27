FROM nginx:1.27-alpine@sha256:5acf10cd305853dc2271e3c818d342f3aeb3688b1256ab8f035fda04b91ed303

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
