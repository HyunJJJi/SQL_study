-- SQL SELECT
SELECT *
FROM products;

-- SQL WHERE
SELECT user_id, stars
FROM reviews
WHERE stars = 3;

-- AND, OR, NOT
SELECT * 
FROM reviews
WHERE stars >= 4 AND review_id < 6000 AND review_id > 2000 AND user_id != 142;

-- SQL BETWEEN
SELECT manufacturer, drug, units_sold
FROM pharmacy_sales
WHERE (units_sold BETWEEN 100000 and 105000)AND(manufacturer = 'Biogen' or manufacturer ='AbbVie' or manufacturer = 'Eli Lilly');

-- SQL IN
SELECT manufacturer, drug, units_sold 
FROM pharmacy_sales
WHERE (manufacturer = 'Roche' or manufacturer = 'Bayer' or manufacturer = 'AstraZeneca') AND (units_sold NOT BETWEEN 55000 AND 550000);

-- SQL LIKE(%)
SELECT * 
FROM customers 
WHERE customer_name LIKE 'F%ck'
LIMIT 20;

-- SQL LIKE(_)
SELECT * 
FROM customers 
WHERE customer_name LIKE '_ee%'
LIMIT 20;

-- FILTERING REVIEW
SELECT * 
FROM customers 
WHERE (age BETWEEN 18 AND 22) 
AND (state = 'Victoria' or state = 'Tasmania' or state = 'Queensland') 
AND (gender != 'n/a') 
AND (customer_name LIKE 'A%' or customer_name LIKE 'B%')
LIMIT 20;
