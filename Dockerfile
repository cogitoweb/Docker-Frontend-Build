FROM ubuntu:18.04

RUN apt update && apt install -y curl git zip unzip gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh && bash nodesource_setup.sh && rm nodesource_setup.sh
RUN apt install -y nodejs && npm install -g bower gulp grunt less sass webpack @angular/cli
# npm

# Clear all the caches
RUN rm /var/lib/apt/lists && npm cache clean --force