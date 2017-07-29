FROM node:latest

WORKDIR /usr/src/app

ARG APP_VERSION=unk

RUN echo "Version is $APP_VERSION"

RUN git clone https://github.com/r2938jlfsfsh/node_kafka_web.git

WORKDIR /usr/src/app/node_kafka_web

RUN rm package-lock.json
RUN npm install
#RUN ln -s "$( which node )" /usr/bin/node

RUN mkdir -p /home/rd/WebstormProjects/db

EXPOSE 3000

CMD ["node", "server.js"]

RUN echo "Built version $APP_VERSION"
