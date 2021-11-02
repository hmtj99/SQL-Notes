SELECT *
FROM products
ORDER BY price DESC;

SELECT *
FROM products
ORDER BY price ASC;

-- sorts alphabetically
SELECT *
FROM products
ORDER BY name ASC;

-- sorts by price first in ascending order and then by weight in descending order
SELECT *
FROM products
ORDER BY price ASC, weight DESC;
