SELECT name, price FROM products
WHERE name LIKE '%Keyboard%';

-- % means any sequence of zero or more characters
-- _ means any single character 

SELECT name, price FROM products WHERE name LIKE 'Keyboa_d';

-- ilike (case-insensitive like)

SELECT name, price FROM products WHERE name ILIKE 'wireless%';

-- LIKE with NOT operator

SELECT name, price FROM products WHERE name NOT LIKE 'S%';
