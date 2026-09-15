-- inner join return only the matching row from both tables 

SELECT users.name AS username,  
      posts.created_at AS published_date,
       posts.views AS total_views,
       comments.body AS comment
FROM users 
INNER JOIN posts ON users.id = posts.user_id
INNER JOIN comments ON posts.id = comments.post_id  
WHERE posts.status = 'published'                     
ORDER BY posts.views DESC
 
