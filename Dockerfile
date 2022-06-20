#
FROM httpd
MAINTAINER Toai Vo <t4tony@yahoo.com>

ARG USERUID
ARG GROUPID

RUN usermod -u ${USERUID} www-data && \
    groupmod -g ${GROUPID} www-data 

COPY httpd.conf /usr/local/apache2/conf
