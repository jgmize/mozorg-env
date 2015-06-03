FROM node
WORKDIR /app
RUN apt-get update && apt-get install -y \
    libmysqlclient-dev libxml2-dev libxslt1-dev python-dev python-pip

COPY bedrock/bin/peep.py /app/bin/peep.py
COPY bedrock/requirements/base.txt /app/requirements/base.txt
COPY bedrock/requirements/compiled.txt /app/requirements/compiled.txt
COPY bedrock/requirements/dev.txt /app/requirements/dev.txt
RUN python /app/bin/peep.py install -r /app/requirements/dev.txt

RUN npm install -g grunt-cli
RUN npm install -g jshint
