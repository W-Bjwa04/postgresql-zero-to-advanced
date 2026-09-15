-- IN operator
SELECT name, price,stock, category FROM products WHERE category IN ('Electronics','Furniture','Apparel');

-- NOT IN operator
SELECT name, price,stock, category FROM products WHERE category NOT IN ('Electronics','Furniture','Apparel');

-- BETWEEN operator
SELECT name, price,stock, category FROM products WHERE price BETWEEN 100 AND 500;

-- NOT BETWEEN operator
SELECT name, price,stock, category FROM products WHERE price NOT BETWEEN 100 AND 500;