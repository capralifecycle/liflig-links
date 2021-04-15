FROM nginx:1.19-alpine@sha256:3d98798475e5a9c839a279eec8ca0595984699ed022a19c4e10d6ebb4ca79bb5

COPY www /usr/share/nginx/html
COPY container/default.conf /etc/nginx/conf.d/default.conf
