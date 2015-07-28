FROM centos:6
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum -y update && yum -y install apache php gcc libxml2-devel libxslt-devel mysql-devel libevent cyrus-sasl-devel git nodejs
ADD rpm /rpm
RUN rpm -i /rpm/python27-libs-2.7.9-1.ius.el6.x86_64.rpm \
           /rpm/python27-2.7.9-1.ius.el6.x86_64.rpm \
           /rpm/python27-mod_wsgi-4.4.7-1.ius.el6.x86_64.rpm \
           /rpm/python27-devel-2.7.9-1.ius.el6.x86_64.rpm \
           /rpm/python27-setuptools-12.0.5-1.ius.el6.noarch.rpm \
           /rpm/python27-pip-6.0.8-1.ius.el6.noarch.rpm \
           /rpm/libmemcached-libs-1.0.18-5.el6.x86_64.rpm \
           /rpm/libmemcached-1.0.18-5.el6.x86_64.rpm \
           /rpm/libmemcached-devel-1.0.18-5.el6.x86_64.rpm
RUN npm install -g less
RUN ln -s /usr/bin/python2.7 /usr/local/bin/python
WORKDIR /data/www/www.mozilla.org-django/bedrock
COPY bedrock/base/bedrock/etc/httpd/httpd.conf etc/httpd/httpd.conf
RUN ln -sf /data/www/www.mozilla.org-django/bedrock/etc/httpd/httpd.conf /etc/httpd/conf/httpd.conf
COPY bedrock/base/bedrock/etc/httpd/www.mozilla.org.conf etc/httpd/www.mozilla.org.conf
RUN ln -s /data/www/www.mozilla.org-django/bedrock/etc/httpd/www.mozilla.org.conf /etc/httpd/conf.d/www.mozilla.org.conf
COPY bedrock/base/bedrock/bin/peep.py bin/peep.py
COPY bedrock/base/bedrock/requirements/base.txt requirements/base.txt
COPY bedrock/base/bedrock/requirements/compiled.txt requirements/compiled.txt
COPY bedrock/base/bedrock/requirements/prod.txt requirements/prod.txt
RUN python2.7 bin/peep.py install -r requirements/prod.txt
