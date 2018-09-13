SELECT * FROM users;

SELECT * FROM posts WHERE user_id='100';

SELECT posts.*, users.first_name, users.last_name FROM posts LEFT JOIN users ON posts.user_id=users.id WHERE user_id='200';

SELECT posts.*, users.username FROM posts LEFT JOIN users ON posts.user_id=users.id WHERE first_name='Norene' AND last_name='Schmitt';

SELECT users.username FROM posts JOIN users ON posts.user_id=users.id WHERE posts.created_at <='2015-01-01';

SELECT comments.*, posts.title AS Post_Title FROM comments LEFT JOIN posts ON comments.post_ID=posts.id;

SELECT comments.body AS Comment_Body, posts.title AS Post_Title, posts.url AS Post_URL FROM comments LEFT JOIN posts ON comments.post_ID=posts.id WHERE posts.created_at >= '2015-01-01';

SELECT comments.body AS Comment_Body, posts.title AS Post_Title, posts.url AS Post_URL FROM comments LEFT JOIN posts ON comments.post_ID=posts.id WHERE posts.created_at < '2015-01-01';

SELECT comments.body AS Comment_Body, posts.title AS Post_Title, posts.url AS Post_URL FROM comments LEFT JOIN posts ON comments.post_ID=posts.id WHERE comments.body LIKE '%USB%';

SELECT posts.title AS Post_Title, users.first_name, users.last_name, comments.body AS Comment_Body FROM comments JOIN users ON comments.user_ID=users.id JOIN posts ON comments.post_id = posts.id WHERE comments.body LIKE '%matrix%';

SELECT users.first_name, users.last_name, comments.body AS Comment_Body FROM comments JOIN users ON comments.user_ID=users.id JOIN posts ON comments.post_id = posts.id WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

SELECT users.first_name AS post_author_first_name, users.last_name AS post_author_last_name, posts.title AS Posts_Title, users.username AS comment_author_username, comments.body AS Comment_Body FROM comments JOIN users ON comments.user_ID=users.id JOIN posts ON comments.post_id = posts.id WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%') AND posts.content LIKE '%nemo%';

