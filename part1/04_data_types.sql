DROP TABLE IF EXISTS basics.product_basics;


CREATE TABLE basics.product_basics(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10,2),
    is_active BOOLEAN,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
    );



INSERT INTO basics.product_basics (name,description,price,is_active)
VALUES
('Laptop','High performance laptop',1200.00,TRUE),
('Mouse','Wireless mouse',25.00,TRUE),
('Keyboard','Mechanical keyboard',75.00,FALSE),
('Monitor','4K monitor',300.00,TRUE),
('Headphones','Noise cancelling headphones',150.00,FALSE);



SELECT * FROM basics.product_basics WHERE price > 100.00 ORDER BY price DESC;