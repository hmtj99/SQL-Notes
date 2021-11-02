-- get rows which are in first query but not in second query
(
	SELECT *
	FROM products
	ORDER BY price DESC
	LIMIT 4
)
EXCEPT
(
	SELECT *
	FROM products
	ORDER BY price/weight DESC
	LIMIT 4
)