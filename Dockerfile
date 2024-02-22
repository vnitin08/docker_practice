FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN cd /app && npm install

COPY main.mjs main.mjs
# COPY . .   
# for all files in the current directory line 17. 

ENTRYPOINT [ "node", "main.mjs" ]