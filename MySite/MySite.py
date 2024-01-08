from flask import Flask, request, url_for, redirect, render_template
import cx_Oracle

mysite = Flask(__name__)

def connect():
    connection =  cx_Oracle.connect('hr/hr@localhost:1521/xe')
    return connection
    
@mysite.route('/')
def main(): #Подключение главной страницы index.html 
    recepe_list=[]
    recepe_list2=[]
    connection = connect()
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM БЛЮДА')
    for row in cursor:
        recepe = {
            'name': row[0],
            'kid': row[1],
            'weight': row[2],
            'count': row[3],
            'season': row[4],
            'equip': row[5],
            'calor': row[6],
            'time': row[7],
            'descr': row[8],
        }
        recepe_list.append(recepe)
    cursor.execute('SELECT * FROM СОСТАВ JOIN БЛЮДА ON НАЗВАНИЕ=БЛЮДО WHERE НАЗВАНИЕ=БЛЮДО')
    for row in cursor:
        recepe1 = {
            'nameingr': row[0],
            'ingr': row[1],
            'countingr': row[2]
        }
        recepe_list2.append(recepe1)
        
    return render_template("index.html", recepes=recepe_list, receps=recepe_list2)

@mysite.route('/regis', methods = ['GET','POST']) #Форма с регистрацией
def regis():
    if request.method == 'GET':
        return render_template("regis.html")
    if request.method == 'POST':
        idd = request.form["idd"]
        login = request.form["login"]
        password = request.form["password"]
        secondname = request.form["secondname"]
        name = request.form["name"]
        patronymic = request.form["patronymic"]
        gender = request.form["gender"]
        date = request.form["date"]
        city = request.form["city"]
        telephone = request.form["telephone"]

        connection = connect()
        cursor = connection.cursor()

        try:
            sql = "INSERT INTO ПОЛЬЗОВАТЕЛИ (ID_ПОЛЬЗОВАТЕЛЯ, ЛОГИН, ПАРОЛЬ) VALUES (:1, :2, :3)"
            cursor.execute(sql,(idd, login, password))
            cursor.execute("INSERT INTO ДАННЫЕ_ПОЛЬЗОВАТЕЛЕЙ (ID_ПОЛЬЗОВАТЕЛЯ, ФАМИЛИЯ, ИМЯ, ОТЧЕСТВО, ПОЛ, ГОД_РОЖДЕНИЯ, ГОРОД_ПРОЖИВАНИЯ, МОБ_ТЕЛЕФОН) VALUES (:1, :2, :3, :4, :5, TO_DATE(:6, 'YYYY-MM-DD'), :7, :8)",(idd, secondname, name, patronymic, gender, date, city, telephone))
            connection.commit()

            return render_template("index.html", status="Ваш аккаунт создан")
        except cx_Oracle.Error as error:
            print(error)
            return render_template("index.html", status="Не получилось создать аккаунт")

@mysite.route('/desert')
def desert(): #Подключение страницы desert.html
    return render_template("desert.html")
    
@mysite.route('/info')
def info(): #Подключение страницы info.html
    return render_template("info.html")

@mysite.route('/meat')
def meat(): #Подключение страницы meat.html
    return render_template("meat.html")

@mysite.route('/menu')
def menu(): #Подключение страницы menu.html
    return render_template("menu.html")

@mysite.route('/salat')
def salat(): #Подключение страницы salat.html
    return render_template("salat.html")

@mysite.route('/sup')
def sup(): #Подключение страницы sup.html
    return render_template("sup.html")

@mysite.route('/recept', methods = ['GET','POST'])
def recept(): #Форма с рецептом
    if request.method == 'GET':
        return render_template("yourrecept.html")   
    if request.method == 'POST':
        name = request.form["name"]
        kid = request.form["kid"]
        weight = request.form["weight"]
        count = request.form["count"]
        season = request.form["season"]
        equip = request.form["equip"]
        calor = request.form["calor"]
        time = request.form["time"]
        descr = request.form["descr"]

        connection = connect()
        cursor = connection.cursor()

        try:
            sql = "INSERT INTO БЛЮДА (НАЗВАНИЕ, ТИП, ОБЩИЙ_ВЕС, КОЛИЧЕСТВО_ПОРЦИЙ, СЕЗОН, НЕОБХОДИМОЕ_ОБОРУДОВАНИЕ, КАЛОРИЙНОСТЬ, ВРЕМЯ_ПРИГОТОВЛЕНИЯ, ПОСЛЕДОВАТЕЛЬНОСТЬ_ПРИГОТОВЛЕНИЯ) VALUES (:1, :2, :3, :4, :5, :6, :7, :8, :9)"
            cursor.execute(sql, (name, kid, weight, count, season, equip, calor, time, descr))
            connection.commit()

            return render_template("compound.html", status="Ваш рецепт был отправлен на рассмотрение")
        except cx_Oracle.Error as error:
            return render_template("compound.html", status="Не корректный ввод")

@mysite.route('/compound', methods = ['GET','POST'])
def compound(): #Подключение страницы compound.html
    if request.method == 'GET':
        return render_template("compound.html")   
    if request.method == 'POST':
        nameingr = request.form["nameingr"]
        ingr = request.form["ingr"]
        countingr = request.form["countingr"]

        connection = connect()
        cursor = connection.cursor()

        try:
            sql = "INSERT INTO СОСТАВ (БЛЮДО, ИНГРЕДИЕНТ, КОЛИЧЕСТВО) VALUES (:1, :2, :3)"
            cursor.execute(sql, (nameingr, ingr, countingr))
            connection.commit()

            return render_template("compound.html", status="Добавлен ингредиент")
        except cx_Oracle.Error as error:
            return render_template("compound.html", status="Не корректный ввод")


if(__name__ == "__main__"):
    mysite.run(debug=True)