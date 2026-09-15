SELECT 
COUNT(*) AS total_posts,
AVG(views) AS avg_views,
MIN(views) AS min_views,
MAX(views) AS max_views,
SUM(views) AS total_views
FROM posts
ORDER BY total_views DESC; 