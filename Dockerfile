FROM node:alpine

RUN npm install -g tiddlywiki@5.2.7

# Setup wiki volume
VOLUME /data
WORKDIR /data

# Add init-and-run script
ADD init-and-run-wiki /usr/local/bin/init-and-run-wiki

# Meta
ENTRYPOINT ["/bin/sh"]
CMD ["/usr/local/bin/init-and-run-wiki"]
