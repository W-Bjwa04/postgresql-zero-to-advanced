-- transaction means runs multiple sql statements in a one signle safe unit 
-- you can also rollback a transaction 

BEGIN;
-- if any error occur then it will rollback else commit 

INSERT INTO users (name) VALUES ('Demo User 1') RETURNING id as demo_user_id;
INSERT INTO users (name) VALUES ('Demo User 2') RETURNING id as demo_user_id;
INSERT INTO users (name) VALUES ('Demo User 3') RETURNING id as demo_user_id;

-- if any error occur then it will rollback else commit 
-- error example 
INSERT INTO users (id) VALUES (ROW(1,2)); -- This WILL cause a data type error!
 
-- if i want to rollback 
ROLLBACK;

-- if i want to commit 
-- COMMIT;