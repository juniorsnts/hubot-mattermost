FROM alpine

LABEL Author="Junior Santos"

RUN apk update && apk upgrade \
  && apk add 'nodejs' \
  && apk add 'nodejs-npm' \
  && apk add 'python' \
  && apk add curl \
  && curl -sS https://bootstrap.pypa.io/get-pip.py | python \
  && npm install -g coffescript \
  && npm install -g yo generator-hubot

RUN apk --purge -v del py-pip \
  && rm -rf /var/cache/apk/*

RUN adduser -h /hubot -s /bin/bash -S hubot
USER hubot
WORKDIR /hubot
ENV EXPRESS_PORT 8086

RUN yo hubot --owner="junior santos <juniorsnts123@gmail.com>" --name="bender" --description="Chatops com Bender" --adapter=mattermost --defaults
COPY package.json package.json
ADD external-scripts.json /hubot/
RUN rm hubot-scripts.json
ADD scripts/*.coffee /hubot/scripts/
RUN npm install

EXPOSE 8086

ENTRYPOINT [ "/bin/sh", "-c", "./bin/hubot -a mattermost" ]
