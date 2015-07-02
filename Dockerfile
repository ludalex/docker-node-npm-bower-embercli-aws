FROM node:0.12.2
MAINTAINER Dan Lynn <docker@danlynn.org>

RUN apt-get install zip
RUN apt-get install -y python-pip
RUN pip install awscli

# Note: npm is v2.7.6
RUN npm install -g ember-cli@0.2.7
RUN npm install -g bower@1.4.1
RUN npm install -g phantomjs@1.9.16
