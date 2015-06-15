from centos:6
run curl -sL https://rpm.nodesource.com/setup | bash -
run yum -y update && yum -y install apache php gcc libxml2-devel libxslt-devel mysql-devel libevent cyrus-sasl-devel git nodejs
add rpm /rpm
run rpm -i /rpm/python27-libs-2.7.9-1.ius.el6.x86_64.rpm \
           /rpm/python27-2.7.9-1.ius.el6.x86_64.rpm \
           /rpm/python27-mod_wsgi-4.4.7-1.ius.el6.x86_64.rpm \
           /rpm/python27-devel-2.7.9-1.ius.el6.x86_64.rpm \
           /rpm/python27-setuptools-12.0.5-1.ius.el6.noarch.rpm \
           /rpm/python27-pip-6.0.8-1.ius.el6.noarch.rpm \
           /rpm/libmemcached-libs-1.0.18-5.el6.x86_64.rpm \
           /rpm/libmemcached-1.0.18-5.el6.x86_64.rpm \
           /rpm/libmemcached-devel-1.0.18-5.el6.x86_64.rpm
run ln -s /usr/bin/python2.7 /usr/local/bin/python
copy bedrock/base/bedrock/etc/httpd/httpd.conf /data/www/www.mozilla.org-django/bedrock/etc/httpd/httpd.conf
run ln -sf /data/www/www.mozilla.org-django/bedrock/etc/httpd/httpd.conf /etc/httpd/conf/httpd.conf
copy bedrock/base/bedrock/etc/httpd/www.mozilla.org.conf /data/www/www.mozilla.org-django/bedrock/etc/httpd/www.mozilla.org.conf
run ln -s /data/www/www.mozilla.org-django/bedrock/etc/httpd/www.mozilla.org.conf /etc/httpd/conf.d/www.mozilla.org.conf
copy bedrock/base/bedrock/bin/peep.py /data/www/www.mozilla.org-django/bedrock/bin/peep.py
copy bedrock/base/bedrock/requirements/base.txt /data/www/www.mozilla.org-django/bedrock/requirements/base.txt
copy bedrock/base/bedrock/requirements/compiled.txt /data/www/www.mozilla.org-django/bedrock/requirements/compiled.txt
copy bedrock/base/bedrock/requirements/prod.txt /data/www/www.mozilla.org-django/bedrock/requirements/prod.txt
run python2.7 /data/www/www.mozilla.org-django/bedrock/bin/peep.py install -r /data/www/www.mozilla.org-django/bedrock/requirements/prod.txt
run npm install -g less
