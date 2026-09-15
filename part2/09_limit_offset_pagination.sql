-- limit -> how many rows you want to return 
-- offset -> how many rows you want to skip 


SELECT name, price, category FROM products 
ORDER BY price DESC
LIMIT 5 OFFSET 0;


-- offset (5)

SELECT name, price, category FROM products 
ORDER BY price DESC
LIMIT 5 OFFSET 5;

-- formula for the offset -> (page - 1) * limit 

