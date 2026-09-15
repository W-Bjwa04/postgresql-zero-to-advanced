SELECT u.name as author_name,
COUNT (p.id) as total_posts
FROM users u
LEFT JOIN posts p ON u.id = p.user_id
GROUP BY u.name
HAVING COUNT (p.id) >= 1
ORDER BY total_posts DESC;