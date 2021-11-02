-- skip first 4 rows
SELECT *
FROM products
OFFSET 4;

-- only get frist 6 rows
SELECT *
FROM products
LIMIT 6;

-- find the most expensive 5 products except the first one
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 1;