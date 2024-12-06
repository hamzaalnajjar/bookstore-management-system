/*Hamza Al Najjar-Book-Store-Management*/

/* 
1. Authors Table: This table stores the details of authors including their name, birth date, and nationality.
*/
CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    nationality VARCHAR(50)
);

/* 
2. Books Table: This table stores information about the books available in the bookstore, 
   including title, genre, price, stock quantity, and a reference to the author.
*/
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

/* 
3. Customers Table: This table stores the information of customers, including their names, contact details, and address.
*/
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address TEXT
);

/* 
4. Orders Table: This table keeps track of customer orders. It includes the customer who placed the order,
   the order date, total amount, and the status of the order.
*/
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

/* 
5. Order Details Table: This table records the individual items in each order, 
   including which book was ordered, the quantity, and the price at the time of order.
*/
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

/* 
6. Payments Table: this table tracks payments for orders, including payment date, method, status, and the amount paid.
*/
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50) DEFAULT 'Pending',
    amount DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
