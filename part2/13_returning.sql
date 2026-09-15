-- returning gives back the data which was inserted or deleted or updated 




INSERT INTO products (name,category, price, stock,is_active,sku, description)
VALUES('Temp Product2','General',10.00, 100,true,'SKU-123456','This is a temporary product for demonstration purposes.')
RETURNING id, name, category, price;


-- also on update 


UPDATE products 
SET price = price + 2
WHERE sku='SKU-123456'
RETURNING id, name, category, price;


-- also on delete 


DELETE FROM products 
WHERE sku='SKU-123456'
RETURNING id, name, category, price;