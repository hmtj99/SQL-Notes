-- FOR union all queries should return same columns and should have same datatype in those columns

-- doesn't show duplicates
(
	SELECT *
	FROM products
	ORDER BY price DESC
	LIMIT 4
)
UNION
(
	SELECT *
	FROM products
	ORDER BY price/weight DESC
	LIMIT 4
);

-- shows duplicates
(
	SELECT *
	FROM products
	ORDER BY price DESC
	LIMIT 4
)
UNION ALL
(
	SELECT *
	FROM products
	ORDER BY price/weight DESC
	LIMIT 4
);