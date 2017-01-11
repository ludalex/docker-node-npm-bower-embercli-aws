FROM node:7.3
MAINTAINER Luca D'Alessandro <ludalex@gmail.com>

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \ 
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update | apt-get install -y yarn zip python-pip
    
RUN pip install awscli

# RUN npm install -g ember-cli 
# RUN npm install -g bower
# RUN npm install -g phantomjs-prebuilt 

RUN yarn global add -g ember-cli bower phantomjs-prebuilt 

