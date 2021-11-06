-- Find greatest in list
SELECT name,weight, GREATEST(weight*2,30)
FROM products;

-- Find lowest in list
SELECT name,weight, LEAST(weight*2,30)
FROM products;

-- CASE statement
SELECT 
  name,
  price,
  CASE
  	WHEN price > 600 THEN 'high'
    WHEN price > 300 THEN 'medium'
    ELSE 'cheap'
  END
FROM products;