FROM nginx:1.25-alpine@sha256:3923f8de8d2214b9490e68fd6ae63ea604deddd166df2755b788bef04848b9bc

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
