FROM httpd:2.4

#RUN apt update -y ; \
#    apt upgrade -y;

COPY ./extra/httpd-autoindex.conf /usr/local/apache2/conf/extra/httpd-autoindex.conf
COPY ./extra/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
#COPY ./apache.conf /usr/local/apache2/conf/apache.conf

#RUN echo "Include /usr/local/apache2/conf/apache.conf" \
#    >> /usr/local/apache2/conf/httpd.conf
