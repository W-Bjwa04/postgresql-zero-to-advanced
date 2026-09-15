-- sub queries runs first return result 
-- used by outer query 

SELECT p.title, p.views
FROM posts p 
WHERE p.views > (SELECT AVG(views) FROM posts)
ORDER BY p.views DESC;