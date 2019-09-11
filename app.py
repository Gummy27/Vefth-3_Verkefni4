from flask import Flask, render_template
import csv

with open('frettir.csv', 'r', newline='', encoding='utf-8') as file:
	reader = list(csv.reader(file, delimiter=':'))

for x in range(len(reader)):
	reader[x].append(reader[x][0].replace(' ', '-'))


app = Flask(__name__)

@app.route("/")
def home():
	return render_template('selection.tpl', len=len(reader), list=reader)

@app.route("/frettir/<int:frett>")
def frett(frett):
	article = reader[int(frett)]
	return render_template('article.tpl', index=frett, headline=article[0], greinin=article[1])

app.run(debug=True)