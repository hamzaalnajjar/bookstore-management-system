/* 
Inserting sample data for the authors table.
*/
INSERT INTO authors (first_name, last_name, date_of_birth, nationality)
VALUES 
    ('J.K.', 'Rowling', '1965-07-31', 'British'),
    ('George', 'Orwell', '1903-06-25', 'British');

/* 
Inserting sample data for the books table. Each book is linked to an author.
*/
INSERT INTO books (title, genre, price, stock, author_id)
VALUES 
    ('Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 29.99, 100, 1),
    ('1984', 'Dystopian', 19.99, 50, 2);

/* 
Inserting sample data for the customers table.
*/

INSERT INTO customers (first_name, last_name, email, phone, address)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm St'),
    ('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Oak St');

/* 
Inserting sample data for the orders table.
*/
INSERT INTO orders (customer_id, order_date, total_amount, status)
VALUES 
    (1, '2024-12-05', 59.98, 'Pending'),
    (2, '2024-12-06', 39.98, 'Completed');

/* 
Inserting sample data for the order_details table. These represent the books ordered in each order.
*/
INSERT INTO order_details (order_id, book_id, quantity, price)
VALUES 
    (1, 1, 2, 29.99),
    (2, 2, 2, 19.99);

/* 
Inserting sample data for the payments table.
*/
INSERT INTO payments (order_id, payment_date, payment_method, payment_status, amount)
VALUES 
    (2, '2024-12-06', 'Credit Card', 'Completed', 39.98);
