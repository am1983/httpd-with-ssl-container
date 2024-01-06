FROM httpd
COPY ./html/ /usr/local/apache2/htdocs/
COPY container.crt container.key /usr/local/apache2/conf/
COPY httpd.conf /usr/local/apache2/conf/
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/
EXPOSE 80
EXPOSE 443