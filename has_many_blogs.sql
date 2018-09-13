CREATE USER has_many_user;
CREATE DATABASE has_many_blogs OWNER = has_many_user;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL primary key NOT NULL,
	username varchar(90) NOT NULL,
	first_name varchar(90),
	last_name varchar(90),
	created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT now () NOT NULL	 
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id SERIAL primary key NOT NULL,
	title varchar(180),
	url varchar(510),
	content text,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT now () NOT NULL,
    user_id INTEGER REFERENCES users (id)	 
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
	id SERIAL primary key NOT NULL,
	body varchar(510),
	created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT now () NOT NULL, 
    user_id INTEGER REFERENCES users (id),
    post_id INTEGER REFERENCES posts (id)	 
);

