FROM nginx:1.27-alpine@sha256:c04c18adc2a407740a397c8407c011fc6c90026a9b65cceddef7ae5484360158

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
