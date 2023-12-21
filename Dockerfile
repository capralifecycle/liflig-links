FROM nginx:1.25-alpine@sha256:a59278fd22a9d411121e190b8cec8aa57b306aa3332459197777583beb728f59

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
