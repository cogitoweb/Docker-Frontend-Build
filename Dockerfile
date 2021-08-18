FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
	curl \
	git \
	zip \
	unzip \
	gnupg

RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh && \
	bash nodesource_setup.sh && \
	rm nodesource_setup.sh && \
	apt-get update

RUN apt-get install -y \
	nodejs \
	&& npm install -g \
	bower \
	gulp \
	grunt \
	less \
	sass \
	webpack \
	@angular/cli

# Clear all the caches
RUN rm -R /var/lib/apt/lists && npm cache clean --force
