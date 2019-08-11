
from flask import Flask, flash, app, render_template, url_for,\
    redirect
import pymysql.cursors
import os
import psycopg2
app = Flask(__name__)

DATABASE_URL = os.environ['DATABASE_URL']

conn = psycopg2.connect(DATABASE_URL, sslmode='require')
""" conn = pymysql.connect(host='127.0.0.1',
                       user='root',
                       password='root',
                       port=8889,
                       db='project',
                       charset='utf8mb4',
                       cursorclass=pymysql.cursors.DictCursor)
 """

currentRows = 5
totalRows = 0
# home page

pagesNum = 0


def pages(rows):
    pages = 0
    if(rows % 5 != 0):
        pages = int(rows/5)+1
    else:
        pages = rows/5

    return pages


@app.route('/', methods=['GET', 'POST'])
def index():
    global currentRows
    cur = conn.cursor()
    query = cur.execute(
        "SELECT RestaurantID, RestaurantName, Address, Cuisines, AverageCost, Currency, AggregateRating, RatingText, RatingColor, PriceRange FROM restaurant ORDER BY RestaurantName ASC LIMIT %s", currentRows)

    restaurantInfo = cur.fetchall()

    query = cur.execute(
        "SELECT COUNT(*) FROM restaurant ")
    global pageNum
    totalRows = cur.fetchone()
    num = totalRows.values()
    num = num[0]
    pageNum = pages(num)
    cur.close()

    return render_template('main.html', restaurantInfo=restaurantInfo, totalRows=totalRows, currentRows=currentRows, pageNum=pageNum)


@app.route('/page<string:i>', methods=['GET'])
def loadPage(i):
    num = str(i)
    num = int(num)

    cur = conn.cursor()
    lower = (num * 5) - 5
    upper = (num * 5)

    query = cur.execute(
        "SELECT RestaurantID, RestaurantName, Address, Cuisines, AverageCost, Currency, AggregateRating, RatingText, RatingColor, PriceRange FROM restaurant ORDER BY RestaurantName ASC LIMIT 5 OFFSET %s", lower)

    restaurantInfo = cur.fetchall()

    query = cur.execute(
        "SELECT RestaurantName FROM restaurant ORDER BY AggregateRating DESC LIMIT 5")
    popularPlaces = cur.fetchone()
    cur.close()

    cur.close()
    return render_template('main.html', restaurantInfo=restaurantInfo, totalRows=totalRows, currentRows=currentRows, pageNum=pageNum, popularPlaces=popularPlaces)


@app.route('/loadMore', methods=['GET', 'POST'])
def viewMore():
    '''
    cur = conn.cursor()
    if(request.method == "POST"):
        currentRows += 5
        query = cur.execute(
            "SELECT RestaurantID, RestaurantName, Address, Cuisines, AverageCost, Currency, AggregateRating, RatingText, RatingColor, PriceRange FROM restaurant ORDER BY RestaurantName ASC LIMIT %s", currentRows)

        restaurantInfo = cur.fetchall()

    return render_template('main.html', restaurantInfo=restaurantInfo, totalRows=totalRows, currentRows=currentRows)


'''
    global currentRows
    currentRows += 5
    return redirect('/')


@app.route('/restaurant/<string:restaurantID>', methods=['GET', 'POST'])
def restaurauntInformation(restaurantID):
    # check if restaurant id exists
    cur = conn.cursor()
    query = cur.execute("SELECT RestaurantName, Address, Cuisines, AverageCost, Currency, HasTableBooking, HasOnlineDelivery, isDeliveringNow, SwitchOrderMenu, PriceRange, AggregateRating, RatingText,RatingColor, Votes FROM restaurant WHERE RestaurantID=%s", restaurantID)
    information = cur.fetchall()

    cur.close()
    return render_template('page.html', information=information)


if __name__ == '__main__':
    app.secret_key = "database"
    app.run(debug=True)
