from flask import Flask, render_template
import csv

with open('frettir.csv', 'r', newline='', encoding='utf-8') as file:
	reader = list(csv.reader(file, delimiter=':'))

app = Flask(__name__)

@app.route("/")
def home():
	return render_template('default.html', len=len(reader), list=reader)

@app.route("/frettir/<frett>")
def frett(frett):
	article = reader[int(frett)-1]
	return render_template('Article.html', headline=article[0], greinin=article[1])