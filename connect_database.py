import mysql.connector


mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "1217Teggs#!"
)



mycursor = mydb.cursor()

mycursor.execute("CREATE DATABASE IF NOT EXISTS library")
mycursor.execute("USE library")
mycursor.execute("""
    CREATE TABLE IF NOT EXISTS books(
                 id INT AUTO_INCREMENT PRIMARY KEY,
                 title VARCHAR(200),
                 author VARCHAR(100)
                 );
""")

