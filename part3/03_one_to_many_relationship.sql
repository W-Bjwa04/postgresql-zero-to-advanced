-- one to many 

-- one post can have many comments 
-- commmet have onyl one post 


SELECT 
      post.title AS post, 
      comments.body as comment 
FROM post
JOIN WITH comments ON comments.post_id = posts.id
ORDER BY post.title, comments.body 
;