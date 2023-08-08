FROM nginx:1.25-alpine@sha256:1713c88213a02f5595dd34520e9b7b26aa58dbfd192cf55b57209507dd7ed113

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
