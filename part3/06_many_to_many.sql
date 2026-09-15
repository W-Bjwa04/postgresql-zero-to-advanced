SELECT posts.title AS post, tags.name AS tag
FROM posts 
INNER JOIN post_tags ON posts.id = post_tags.post_id
INNER JOIN tags ON post_tags.tag_id = tags.id
ORDER BY posts.created_at DESC;
