DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples(
  id SERIAL PRIMARY KEY,
  nickname TEXT, 
  bio TEXT, 
  score INTEGER  
);

-- insert (null, empty , 0) records variation 

INSERT INTO basics.value_examples(nickname, bio, score) VALUES
('Alpha', NULL, 10),
('Beta', '', 5),
('Gamma', 'Test', 0);

--query 
SELECT 
    nickname, 
    LENGTH(bio) AS bio_length, 
    (score = 0) AS is_zero_score
FROM basics.value_examples;