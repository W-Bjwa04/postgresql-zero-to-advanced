CREATE INDEX IF NOT EXISTS idx_posts_status 
ON posts(status);


SELECT title, status, views
FROM posts
WHERE status = 'published' 
ORDER BY views DESC;

-- composite index 
CREATE INDEX IF NOT EXISTS idx_posts_user_id_status
ON posts(user_id, status);

SELECT u.name,p.title,p.status,p.views
FROM users u
JOIN posts p ON u.id = p.user_id 
WHERE p.status ='draft'
AND u.name = 'Bob Smith'
ORDER BY p.views DESC;