
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS follow;
DROP TABLE IF EXISTS like;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS content;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    username TEXT,
    location TEXT
);

CREATE TABLE post (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    created_at TEXT,
    url TEXT
);

CREATE TABLE like (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE comment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER,
    body_text TEXT,
    created_at TEXT
);

CREATE TABLE follow (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    following_user_id INTEGER,
    followed_user_id INTEGER
);

