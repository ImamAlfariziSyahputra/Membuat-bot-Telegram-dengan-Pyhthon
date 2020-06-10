import telebot
import myToken

from datetime import date
from datetime import datetime

TOKEN=myToken.TOKEN
myBot = telebot.TeleBot(TOKEN)
from telebot import apihelper
waktuSekarang = datetime.now()

class Mybot:
    def __init__(self):
        self.message

    @myBot.message_handler(commands=['start','help'])
    def start(message):
        teks = myToken.SAPA + "\n-- admin & dev @ImamAlfarizi --" + "\n" \
                            "hari ini tanggal " + str(waktuSekarang)
        myBot.reply_to(message, teks)
print("-- Bot is Running --")
myBot.polling(none_stop=True)
