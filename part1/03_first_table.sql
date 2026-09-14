DROP TABLE IF EXISTS basics.students;

-- create table based on basics schema 

CREATE TABLE basics.students(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INTEGER CHECK(age > 18),
    enrollment_date TIMESTAMP DEFAULT NOW()
);

--INSERT records in to the table 
INSERT INTO basics.students(name, email,age) VALUES 
('John Doe','john.doe@test.com',23),
('Jane Smith','jane.smith@test.com',22),
('Bob Johnson','bob.johnson@test.com',24),
('Alice Williams','alice.williams@test.com',25),
('Charlie Brown','charlie.brown@test.com',26);


-- SELECT records FROM the table 
SELECT * FROM basics.students;