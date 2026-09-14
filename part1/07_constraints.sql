-- NOT NULL, UNIQUE, DEFAULT, CHECK
-- app, script, developer

DROP TABLE IF EXISTS basics.accounts;


CREATE TABLE basics.accounts(
    id SERIAL PRIMARY KEY, 
    username VARCHAR(30) UNIQUE NOT NULL, 
    email VARCHAR(255) UNIQUE NOT NULL,
    balance DECIMAL(10,2) DEFAULT 0 CHECK(balance >=0),
    role TEXT DEFAULT 'viewer' CHECK(role IN ('viewer','editor','admin')),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.accounts(username, email, balance, role) VALUES
('alpha','[EMAIL_ADDRESS]',100,'viewer'),
('beta','[EMAIL_ADDRESS]',-50,'viewer')
;

--  check accounts table data
SELECT * FROM basics.accounts;