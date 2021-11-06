SELECT name, price
FROM products
WHERE price > (
	SELECT MAX(price) FROM products WHERE department='Toys'
);

-- Just think about compatibility everytime

-- Subquery in Select statements 
SELECT name, price, (
	SELECT MAX(price) FROM products -> This should return a single value(Single row single column)
)
FROM products
WHERE price > 876;

SELECT name, price, (
	SELECT price FROM products WHERE id=3
) AS id_3_price
FROM products
WHERE price > 876;

-- Subquery in FROM -> always needs an alias
SELECT price_to_weight_ratio
FROM (
	SELECT name, price/weight AS price_to_weight_ratio FROM products  
) as p
WHERE price_to_weight_ratio>5;

SELECT price
FROM (
	SELECT MAX(price) as price FROM products
) as p;

-- Find the average number of orders by all users
SELECT AVG(orders_per_user)
FROM
(
  SELECT user_id,COUNT(*) as orders_per_user
	FROM orders
	GROUP BY user_id
) as p;

-- Find maximum average price from all manufacturers
SELECT AVG(orders_per_user)
FROM
(
  SELECT user_id,COUNT(*) as orders_per_user
	FROM orders
	GROUP BY user_id
) as p;

-- Subquery on JOIN clause
SELECT first_name
FROM users
JOIN(
	SELECT user_id FROM orders WHERE product_id=3
) as o 
ON o.user_id=users.id;

-- Subquery on WHERE clause
 SELECT id 
 FROM orders
 WHERE product_id IN (
   SELECT id
   FROM products
   WHERE price/weight > 50
);

-- show name of products with price greater than average product price
SELECT name,price
FROM products
WHERE price > (
	SELECT AVG(price) FROM products
);

-- show name of products that are not in department with product price < 100
SELECT name,price, department
FROM products
WHERE department NOT IN (
	SELECT department
  FROM products
  WHERE price <100
)

-- find products which are more expensive than all products in Industrial department
SELECT name,price, department
FROM products
WHERE price > (
	SELECT MAX(price)
  FROM products
  WHERE department='Industrial'
)
-- another way
SELECT name,price, department
FROM products
WHERE price > ALL(
	SELECT price
  FROM products
  WHERE department='Industrial'
)

-- if price is greater than atleast one value in list, return result
SELECT name,price, department
FROM products
WHERE price > SOME/ANY(
	SELECT price
  FROM products
  WHERE department='Industrial'
)

-- Correlated Subquery
-- Find the product for each category with maximum price
SELECT name, department,price
FROM products AS p1
WHERE p1.price = (
  SELECT MAX(price)
  FROM products AS p2
  WHERE p2.department = p1.department
)

-- Find the number of orders for each product
SELECT id,name, (
  SELECT COUNT(*) as product_orders
  FROM orders as o1
  WHERE p1.id = o1.product_id
)
FROM products as p1

-- SELECT statement without FROM
SELECT (
  SELECT MAX(price) FROM products
), (
	SELECT AVG(price) FROM products
);