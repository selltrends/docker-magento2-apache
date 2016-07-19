FROM httpd:2.4
MAINTAINER Alex Wang <selltrends@gmail.com>

ENV PHP_HOST php
ENV PHP_PORT 9000
ENV APP_MAGE_MODE default

COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./conf/default.conf /usr/local/apache2/conf/httpd.conf

WORKDIR /usr/local/apache2/htdocs/

CMD
