SELECT title
FROM movies
JOIN ratings ON ratings.movie_id = movies.id
JOIN stars ON stars.movie_id = movies.id
WHERE stars.person_id in
    (SELECT id
     FROM people
     WHERE name = 'Chadwick Boseman')
ORDER BY rating DESC
LIMIT 5;
