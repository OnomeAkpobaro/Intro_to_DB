import mysql.connector
from mysql.connector import Error

def create_database():
    try:

        mydb = mysql.connector.connect(
            host = 'localhost',
            user = 'user',
            password = 'userpassword'
)
        if mydb.is_connected():
            mycursor = mydb.cursor()

            mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book-store' created successflly")
    except mysql.connector.Error:
        print(f"Error while connecting to mysql")
         
    finally:
        if mydb.is_connected():
            mycursor.close()
            mydb.close()
            print("mysql connection is closed")

if __name__ == "__main__":
    create_database()