FROM httpd:2.4

#RUN apt update -y ; \
#    apt upgrade -y;

COPY ./ssl/ssl.crt /usr/local/apache2/ssl/server.crt
COPY ./ssl/ssl.key /usr/local/apache2/ssl/server.key

COPY ./extra/* /usr/local/apache2/conf/extra/
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
