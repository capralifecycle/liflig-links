FROM nginx:1.25-alpine@sha256:23ccbbec5776684ed542859f57683f0273b931134ff5cbbd4d08feed8fef5277

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
