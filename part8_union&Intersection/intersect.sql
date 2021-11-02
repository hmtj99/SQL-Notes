-- To find common rows
(
	SELECT *
	FROM products
	ORDER BY price DESC
	LIMIT 4
)
INTERSECT
(
	SELECT *
	FROM products
	ORDER BY price/weight DESC
	LIMIT 4
)

-- preserve duplicates if multiple results in on of the queries
(
	SELECT *
	FROM products
	ORDER BY price DESC
	LIMIT 4
)
INTERSECT ALL
(
	SELECT *
	FROM products
	ORDER BY price/weight DESC
	LIMIT 4
)