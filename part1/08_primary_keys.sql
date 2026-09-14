-- Primary keys uniquely identify each row in a table. 

DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts(
    id SERIAL PRIMARY KEY, 
    title TEXT NOT NULL, 
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

-- insert data 
INSERT INTO basics.accounts (title, price) 
VALUES 
('first account',200), 
('second account',503);


--retrieve all data 
SELECT * FROM basics.accounts;

-- insert duplicate PK 
INSERT INTO basics.accounts (id, title, price) 
VALUES 
(1,"first account",200);