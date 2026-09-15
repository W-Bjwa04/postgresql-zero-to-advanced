-- and (both conditions must be true)

SELECT name, price, stock FROM products WHERE category='Electronics' AND price>=100;


-- or 

SELECT name,price,stock, category FROM products WHERE category='Groceries' OR category='Electronics';

-- not 
SELECT name,price,stock, category FROM products WHERE NOT category='Groceries';

-- combined query 
SELECT name,price,stock, category FROM products
WHERE (category='Electronics' AND price > 100) OR (category='Furniture' AND stock > 10);