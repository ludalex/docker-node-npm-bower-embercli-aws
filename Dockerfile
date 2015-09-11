FROM node:0.12.2
MAINTAINER Dan Lynn <docker@danlynn.org>

RUN apt-get update
RUN apt-get install -y zip
RUN apt-get install -y python-pip
RUN pip install awscli

# Note: npm is v2.7.6
RUN npm install -g ember-cli@0.13.8
RUN npm install -g bower@1.5.2
RUN npm install -g phantomjs@1.9.16
