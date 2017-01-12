FROM node:7.3
MAINTAINER Luca D'Alessandro <ludalex@gmail.com>

RUN apt-get update && apt-get install apt-transport-https python-dev 

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - 
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install --fix-missing && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends yarn zip python-pip && \
    apt-get clean && \
    rm -rf  /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
RUN export PATH="$PATH:`yarn global bin`"    
    
RUN pip install awscli

# RUN npm install -g ember-cli 
# RUN npm install -g bower
# RUN npm install -g phantomjs-prebuilt 

RUN yarn global add -g ember-cli bower phantomjs-prebuilt 

