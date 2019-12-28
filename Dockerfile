FROM node
LABEL org.label-schema.version=v1.1
ENV NODE_ENV="production"
ENV Docker_PORT 8080

RUN mkdir -p /var/node
ADD src/ /var/node/
WORKDIR /var/node
RUN npm install
EXPOSE $Docker_PORT
ENTRYPOINT ./bin/www
