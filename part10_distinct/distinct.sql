-- Find distinct departments
SELECT DISTINCT department
FROM products;

-- Find no.of distinct departments 
SELECT COUNT(DISTINCT department)
FROM products;

-- Find distinct combinations of department and name
SELECT DISTINCT department, name
FROM products;

-- Note - COUNT on DISTINCT is only possible for one column