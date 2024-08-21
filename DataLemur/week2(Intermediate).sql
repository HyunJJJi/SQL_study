-- SQL COUNT
SELECT count(*)
FROM pharmacy_sales;

-- SQL SUM
SELECT count(*), sum(total_sales)
FROM pharmacy_sales
WHERE manufacturer = 'Pfizer';

-- SQL AVG
SELECT avg(open)
FROM stock_prices
WHERE ticker = 'GOOG';

-- SQL MIN
SELECT min(open)
FROM stock_prices
WHERE ticker = 'MSFT';

-- SQL MAX
SELECT max(open)
FROM stock_prices
WHERE ticker = 'NFLX';

-- SQL GROUP BY 1
SELECT ticker, min(open)
FROM stock_prices
GROUP BY ticker
ORDER BY min(open) DESC;

-- SQL GROUP BY 2
SELECT skill, count(*)
FROM candidates
GROUP BY skill
ORDER BY 2 DESC;

-- SQL HAVING 1
SELECT ticker, min(open)
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) > 100;

-- SQL HAVING 2
SELECT candidate_id
FROM candidates
GROUP BY candidate_id
HAVING count(skill) > 2;

-- SQL DISTINCT
SELECT category, count(DISTINCT product) 
FROM product_spend
GROUP BY category;

-- SQL ARITHMETIC 1
SELECT drug, total_sales - cogs as total_profit
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;

-- SQL ARITHMETIC 2
SELECT card_name, MAX(issued_amount) - MIN(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;

-- SQL ARITHMETIC 3
SELECT ticker, count(ticker)
FROM stock_prices
WHERE (close - open) / open > 0.1 OR (close - open) / open < -0.1
GROUP BY ticker
ORDER BY 2 DESC;

-- MATH FUNCTIONS
SELECT drug, ceil(total_sales/units_sold) as unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY unit_cost;

-- SQL DIVISION (LOCKED)


-- SQL NULL
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
