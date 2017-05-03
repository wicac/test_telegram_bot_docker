var TelegramBot = require('node-telegram-bot-api'),
    // Be sure to replace YOUR_BOT_TOKEN with your actual bot token on this line.
    telegram = new TelegramBot("367639294:AAHRHMI5eiOVzcer-RNmhGFO_-ZoGCHeGaM", { polling: true });

telegram.on("text", (message) => {
  telegram.sendMessage(message.chat.id, "Hello world");
});