SELECT contents,username FROM comments
JOIN users ON comments.user_id=users.id;

SELECT contents,url FROM comments
JOIN photos ON comments.photo_id=photos.id;

SELECT url,username FROM photos
INNER JOIN users ON photos.user_id=users.id;

SELECT url,username FROM photos
LEFT JOIN users ON photos.user_id=users.id;

SELECT url,username FROM photos
RIGHT JOIN users ON photos.user_id=users.id;

SELECT url, contents
FROM comments 
JOIN photos ON comments.photo_id = photos.id
WHERE comments.user_id = photos.user_id;

-- three way join
SELECT title,name,rating
FROM reviews
JOIN books ON reviews.book_id = books.id
JOIN authors ON books.author_id=authors.id AND reviews.reviewer_id=authors.id;