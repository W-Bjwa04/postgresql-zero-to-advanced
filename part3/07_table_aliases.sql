-- left join keeps all rows from the left table 

SELECT u.name AS username,  
      p.created_at AS published_date,
       p.views AS total_views,
       c.body AS comment
FROM users AS u 
INNER JOIN posts AS p ON u.id = p.user_id
left JOIN comments AS c ON p.id = c.post_id                     
ORDER BY p.views DESC
 