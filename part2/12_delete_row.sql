-- delete 

-- add temp data first then delete it 

INSERT INTO products (name,category, price, stock,is_active,sku, description)
VALUES('Temp Product','General',10.00, 100,true,'SKU-123456','This is a temporary product for demonstration purposes.');


SELECT * FROM products WHERE sku='SKU-123456';

DELETE FROM products WHERE sku='SKU-123456';


--