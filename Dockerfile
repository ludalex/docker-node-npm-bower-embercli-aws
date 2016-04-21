FROM node:4.4.3
MAINTAINER Dan Lynn <docker@danlynn.org>

RUN apt-get update
RUN apt-get install -y zip
RUN apt-get install -y python-pip
RUN pip install awscli

# Note: npm is v2.14.20
RUN npm install -g ember-cli #@2.4.3
RUN npm install -g bower@1.5.3
RUN npm install -g phantomjs@1.9.16
