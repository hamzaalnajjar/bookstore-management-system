/* 
Query 1: Get all books in stock.
*/
SELECT title, price, stock
FROM books
WHERE stock > 0;

/* 
Query 2: Get all orders placed by a customer with ID 1.
*/
SELECT o.order_id, o.order_date, b.title, od.quantity, od.price
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN books b ON od.book_id = b.book_id
WHERE o.customer_id = 1;

/* 
Query 3: Get the total sales of each book.
*/
SELECT b.title, SUM(od.quantity * od.price) AS total_sales
FROM books b
JOIN order_details od ON b.book_id = od.book_id
GROUP BY b.title;

/* 
Query 4: Get customers who have pending orders.
*/
SELECT c.first_name, c.last_name, o.order_id
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Pending';

/* 
Query 5: Get the total revenue for the bookstore.
*/
SELECT SUM(p.amount) AS total_revenue
FROM payments p;
