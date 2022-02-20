FROM node
RUN apt-get update -y
RUN mkdir wdioExample
COPY . /wdioExample
WORKDIR /wdioExample
RUN npm install
CMD npx wdio run wdio.conf.js