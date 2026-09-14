DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events(
   -- uuid 
   id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
   -- event_nae
   event_name TEXT NOT NULL,
   -- json for details
   properties JSONB DEFAULT ('{}'::jsonb), 
   -- 
   created_at TIMESTAMP DEFAULT NOW()
); 

-- insert data 
INSERT INTO basics.app_events(event_name, properties) VALUES 
('user_login', '{"user_id":1, "method":"email"}'),
('user_logout', '{"user_id":1}'),
('page_view', '{"url":"/home", "referrer":""}');

-- query the data  
SELECT event_name, properties ->> 'user_id' AS user_id 
FROM basics.app_events
WHERE event_name = 'user_login'; 