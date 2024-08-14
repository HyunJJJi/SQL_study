/*
1. **Basic Data Exploration**
    - Display the first names, last names, and emails of all customers.
    - Display the names and join dates of customers who joined in 2024.
*/

-- 1-1
SELECT first_name, last_name, email
FROM customers;

-- 1-2
SELECT first_name, last_name, date_format(join_date,"%Y-%m-%d") as join_date
FROM customers
WHERE year(join_date) = 2024 ;
-- 날짜 형식 지정하는 것을 date_format 함수 사용해야 한다고 알고 있는데 DB 브라우저에서 인식이 안 되네요... 왜 그러는 걸까요...?



/*
2. **Sales Data Analysis**
    - Display the order ID, order date, and total amount for all orders.
    - Display orders with a total amount of $100 or more.
*/

-- 2-1
SELECT order_id, order_date, total_amount
FROM orders;

-- 2-2
SELECT order_id, order_date, total_amount
FROM orders
WHERE total_amount >= 100;



/*
3. **Product Data Exploration**
    - Display the names and prices of all products.
    - Display products with a price of $50 or more.
*/

-- 3-1
SELECT product_name, price
FROM products;

-- 3-2
SELECT product_name, price
FROM products
WHERE price >= 50;



/*
4. **Filtering Data by Specific Conditions**
    - Display the names and prices of products in the "Electronics" category.
    - Display the order ID, order date, and total amount for orders placed after "2024-01-01".
*/

-- 4-1
SELECT product_name, price
FROM products
WHERE category = 'Electronics';

-- 4-2
SELECT order_id, order_date, total_amount
FROM orders
WHERE order_date > '2024-01-01';
