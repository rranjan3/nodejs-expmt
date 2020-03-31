FROM ubuntu:bionic

RUN apt-get update \
&& apt-get install -y -q curl

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g --unsafe-perm pm2

RUN mkdir /project
ADD server.js /project

WORKDIR /project
EXPOSE 1947

RUN pm2 start server.js \
&& pm2 save

# CMD tail -f /dev/null --- Enable this and comment out the next line to experiment with a live container
ENTRYPOINT pm2 startup
