CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Books(
       book_id INT PRIMARY KEY AUTO_INCREMENT,
       title VARCHAR(130) NOT NULL,
       author_id INT,
       price DOUBLE NOT NULL,
       publication_date DATE,
       FOREIGN KEY (author_id) REFERENCES Authors(authour_id)
            ON DELETE CASCADE
            ON UPDATE CASCADE

);
CREATE TABLE Authors(
                author_id INT PRIMARY KEY,
                author_name VARCHAR(215) NOT NULL
);


CREATE TABLE Customers(
        customer_id INT PRIMARY KEY AUTO_INCREMENT,
        customer_name VARCHAR(215) NOT NULL,
        email VARCHAR(215) NOT NULL UNIQUE,
        address TEXT NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Order_details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
    FOREIGN KEY (book_id) REFERENCES Books(books_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);