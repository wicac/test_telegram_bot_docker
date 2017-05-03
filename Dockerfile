FROM alpine:latest
MAINTAINER wicac@yahoo.com
 

RUN apk update && apk add tar gzip
RUN mkdir -p /apps/telegram_test_bot
WORKDIR /apps/telegram_test_bot/
RUN apk add --update nodejs
RUN npm init -f
RUN npm install --save node-telegram-bot-api

COPY index.js .

#ENTRYPOINT ["node"]
#CMD ["index.js"]
