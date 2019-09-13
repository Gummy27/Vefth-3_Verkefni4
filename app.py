from flask import Flask, render_template
import csv
from PIL import Image

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

	with Image.open("static/Mynd"+str(frett)+".jpg") as img:
		width, height = img.size

	return render_template('article.tpl', index=frett, headline=article[0], greinin=article[1], height=height*(485/width))

if __name__ == "__main__":
	app.run(debug=True, use_reloader=True)
