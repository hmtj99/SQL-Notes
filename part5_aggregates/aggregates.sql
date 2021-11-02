SELECT user_id, COUNT(id) AS num_comments_created
FROM comments
GROUP BY user_id;

COUNT does not count null fields
SELECT COUNT(user_id) FROM photos; -> return 20 since 1 row has user_id as null

SELECT photo_id, COUNT(*) AS num_of_comments
FROM COMMENTS
GROUP BY photo_id; 

SELECT name, COUNT(*)
FROM books
JOIN authors ON books.author_id=authors.id
GROUP BY name;

Find the no.of comments for each photo where photo_id < 3 and the photo has more than 2 comments
SELECT photo_id, COUNT(*)
FROM COMMENTS
WHERE photo_id<3
GROUP BY photo_id
HAVING COUNT(*) > 2;

Find the user_ids where the user has commented on the first 50 photos and the user has added more than 20 comments on those photos
SELECT user_id, COUNT(*)
FROM COMMENTS
WHERE photo_id < 50
GROUP BY user_id
HAVING COUNT(*) > 20;

SELECT manufacturer, SUM(price*units_sold)
FROM phones
GROUP BY manufacturer
HAVING SUM(price*units_sold) > 2000000;
