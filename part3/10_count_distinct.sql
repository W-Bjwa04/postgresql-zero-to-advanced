-- DISTINCT return the unique count of the rows which are present in the table 


SELECT t.name as tag_name,
    count(DISTINCT p.id) as total_unique_posts
FROM tags AS t
left JOIN post_tags AS pt ON t.id = pt.tag_id
left JOIN posts AS p ON pt.post_id = p.id
GROUP BY t.name 
ORDER BY total_unique_posts DESC;
