import telebot
import myToken
import mysql.connector
from datetime import date
from datetime import datetime

TOKEN=myToken.TOKEN
myBot = telebot.TeleBot(TOKEN)

myDb = mysql.connector.connect(host='localhost', user='root', password='', database='db_belajarbot')
sql = myDb.cursor()

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

    @myBot.message_handler(commands=['datasiswa'])
    def menu_data_siswa(message):
        query = "SELECT nipd,nama,kelas FROM table_siswa"
        sql.execute(query)
        data = sql.fetchall()
        jmldata = sql.rowcount
        kumpuldata=''

        if(jmldata > 0):
            #print(data)
            no = 0
            for x in data:
                no += 1
                kumpuldata = kumpuldata + str(x) + '\n'
                print(kumpuldata)
                kumpuldata = kumpuldata.replace('(','')
                kumpuldata = kumpuldata.replace(')', '')
                kumpuldata = kumpuldata.replace("'", '')
                kumpuldata = kumpuldata.replace(',', '')
        else:
            print('datakosong')

        myBot.reply_to(message, str(kumpuldata))

print("-- Bot is Running --")
myBot.polling(none_stop=True)
