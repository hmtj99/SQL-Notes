-- creating a not null constraint

-- when creating table
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER NOT NULL,
	weight INTEGER
);

-- when table is already created(might error out if null values in column)
ALTER TABLE products
ALTER COLUMN price
SET NOT NULL;

-- update null values to something else
UPDATE products
SET price=9999
WHERE price IS NULL;

-- creating a default constraint

-- when creating table
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER DEFAULT 999,
	weight INTEGER
);

-- when table is already created
ALTER TABLE products
ALTER COLUMN price
SET DEFAULT 999;

-- Unique constraint
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE,
	department VARCHAR(40),
	price INTEGER,
	weight INTEGER
);

-- when table is already created
ALTER TABLE products
ADD UNIQUE(name);

-- multi column
ALTER TABLE products
ADD UNIQUE(name,department);

-- removing a constraint
ALTER TABLE products
DROP CONSTRAINT products_name_key(name of constraint);

-- Validation Check

-- when creating table
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	department VARCHAR(40) NOT NULL,
	price INTEGER CHECK (price > 0),
	weight INTEGER
);

-- multi column
CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	created_at TIMESTAMP NOT NULL,
	est_delivery TIMESTAMP NOT NULL,
	CHECK (created_at < est_delivery)
);

-- when table is already created
ALTER TABLE products
ADD CHECK(price > 0);