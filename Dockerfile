FROM mozorg/apache
COPY apache/mozilla.com /data/www/www.mozilla.org
COPY apache/bedrock/base/bedrock /data/www/www.mozilla.org-django/bedrock
RUN ./manage.py collectstatic --noinput
RUN ./manage.py update_externalfiles
RUN ./manage.py update_product_details
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
EXPOSE 80
