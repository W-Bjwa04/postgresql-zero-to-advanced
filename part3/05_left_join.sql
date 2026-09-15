-- left join keeps all rows from the left table 

SELECT users.name AS username,  
      posts.created_at AS published_date,
       posts.views AS total_views,
       comments.body AS comment
FROM users 
INNER JOIN posts ON users.id = posts.user_id
left JOIN comments ON posts.id = comments.post_id                     
ORDER BY posts.views DESC
