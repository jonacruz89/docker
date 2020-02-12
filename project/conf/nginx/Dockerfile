FROM nginx:latest

RUN mkdir /etc/ssl
RUN mkdir /etc/ssl/certs

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./ssl/server.crt /etc/ssl/certs/server.crt
COPY ./ssl/server.key /etc/ssl/certs/server.key
