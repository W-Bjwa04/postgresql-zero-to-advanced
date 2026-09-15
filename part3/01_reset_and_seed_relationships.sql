CREATE EXTENSION IF NOT EXISTS pgCrypto;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;


CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL
);

CREATE TABLE tags (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL
);

CREATE TABLE posts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id),
    title TEXT NOT NULL,
    status TEXT DEFAULT 'draft' CHECK (status IN ('draft','published')),
    views INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id UUID REFERENCES posts(id),
    body TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE post_tags (
    post_id UUID REFERENCES posts(id),
    tag_id UUID REFERENCES tags(id),
    PRIMARY KEY (post_id, tag_id)  
    -- composite primary key for unique combinations of post_id and tag_id so that one post can have multiple tags and one tag can have multiple posts and it does not get repeated
);


-- insert data 

WITH 
-- 1. Insert Users and grab their generated IDs
inserted_users AS (
    INSERT INTO users (name) 
    VALUES ('Alice Johnson'), ('Bob Smith')
    RETURNING id, name
),

-- 2. Insert Tags and grab their generated IDs
inserted_tags AS (
    INSERT INTO tags (name) 
    VALUES ('Database'), ('SQL'), ('Web Dev')
    RETURNING id, name
),

-- 3. Insert Posts using the IDs from inserted_users
inserted_posts AS (
    INSERT INTO posts (user_id, title, status, views)
    VALUES 
        ((SELECT id FROM inserted_users WHERE name = 'Alice Johnson'), 'Mastering PostgreSQL Keys', 'published', 150),
        ((SELECT id FROM inserted_users WHERE name = 'Bob Smith'), 'Intro to pgCrypto Extension', 'draft', 0)
    RETURNING id, title
)

-- 4. Insert Comments using the IDs from inserted_posts
, inserted_comments AS (
    INSERT INTO comments (post_id, body)
    VALUES 
        ((SELECT id FROM inserted_posts WHERE title = 'Mastering PostgreSQL Keys'), 'Great explanation of composite keys!'),
        ((SELECT id FROM inserted_posts WHERE title = 'Mastering PostgreSQL Keys'), 'Helped me clean up my db tables.')
)

-- 5. Insert Post-Tags using IDs from inserted_posts and inserted_tags
INSERT INTO post_tags (post_id, tag_id)
VALUES 
    (
        (SELECT id FROM inserted_posts WHERE title = 'Mastering PostgreSQL Keys'), 
        (SELECT id FROM inserted_tags WHERE name = 'Database')
    ),
    (
        (SELECT id FROM inserted_posts WHERE title = 'Mastering PostgreSQL Keys'), 
        (SELECT id FROM inserted_tags WHERE name = 'SQL')
    ),
    (
        (SELECT id FROM inserted_posts WHERE title = 'Intro to pgCrypto Extension'), 
        (SELECT id FROM inserted_tags WHERE name = 'SQL')
    );
