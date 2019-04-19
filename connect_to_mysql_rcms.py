import mysql.connector

cnx = mysql.connector.connect(user='rcms_developer', password='rcms_d3v3l0p3r',
                              host='127.0.0.1',
                              database='rcms2')


def mysql_query_select(q):
    cursor = cnx.cursor()

    #query = (
        #"SELECT first_name, last_name, hire_date FROM employees "
        # "WHERE hire_date BETWEEN %s AND %s")

    #hire_start = datetime.date(1999, 1, 1)
    #hire_end = datetime.date(1999, 12, 31)
    #cursor.execute(q, (hire_start, hire_end))

    cursor.execute(q)

    #for (first_name, last_name, hire_date) in cursor:
    rowSet = []
    for row in cursor:
        rowSet.append(row)
        #print("{}, {} was hired on {:%d %b %Y}".format(last_name, first_name, hire_date))

    cursor.close()
    return rowSet


def mysql_exec(q):
    cursor = cnx.cursor()
    cursor.execute(q)
    cnx.commit()

    cursor.close()


def mysql_query_insert(q, data):
    cursor = cnx.cursor()
    #add_employee = ("INSERT INTO employees "
    #           "(first_name, last_name, hire_date, gender, birth_date) "
    #           "VALUES (%s, %s, %s, %s, %s)")
    #cursor.execute("SET FOREIGN_KEY_CHECKS=0;")
    cursor.execute(q,data)
    #cursor.execute("SET FOREIGN_KEY_CHECKS=1;")
    cnx.commit()

    cursor.close()


def close_mysql():
    cnx.close()

    
    

