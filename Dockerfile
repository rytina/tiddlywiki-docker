FROM node:alpine
ARG tiddlywiki_version=5.3.0
RUN npm install -g tiddlywiki@$tiddlywiki_version

# Setup wiki volume
VOLUME /data
WORKDIR /data

# Add init-and-run script
ADD init-and-run-wiki /usr/local/bin/init-and-run-wiki

# Meta
ENTRYPOINT ["/bin/sh"]
CMD ["/usr/local/bin/init-and-run-wiki"]
