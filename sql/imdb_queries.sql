1)
SELECT * FROM movies WHERE year = 1995

2)
SELECT DISTINCT a.first_name 'First Name', a.last_name 'Last Name', m.name 'Movie Name'
FROM actors a
JOIN roles r ON a.id = r.actor_id
JOIN movies m ON m.id = r.movie_id
WHERE m.name='Lost in Translation'

3)
SELECT DISTINCT a.first_name 'First Name'
FROM actors a
JOIN roles r ON a.id = r.actor_id
JOIN movies m ON m.id = r.movie_id
WHERE m.name='Lost in Translation'

4)
SELECT DISTINCT d.first_name 'First Name', d.last_name 'Last Name'
FROM directors d
JOIN movies_directors md ON d.id = md.director_id
JOIN movies m ON m.id = md.movie_id
WHERE m.name = 'Fight Club'

5)
SELECT COUNT(name)
FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN directors d ON d.id = md.director_id
WHERE d.first_name = 'Clint' AND d.last_name = 'Eastwood'

6)
SELECT m.name 'Movie Titles'
FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN directors d ON d.id = md.director_id
WHERE d.first_name = 'Clint' AND d.last_name = 'Eastwood'

7)
SELECT d.first_name 'First Name', d.last_name 'Last Name', mg.genre 'Genre'
FROM directors d
JOIN movies_directors md ON md.director_id = d.id
JOIN movies_genres mg ON md.movie_id = mg.movie_id
WHERE mg.genre = 'horror'

8)
SELECT a.first_name 'First Name', a.last_name 'Last Name'
FROM actors a
JOIN roles r ON r.actor_id = a.id
JOIN movies_directors md ON md.movie_id = r.movie_id
JOIN directors d ON d.id = md.director_id
WHERE d.first_name = 'Christopher' AND d.last_name = 'Nolan'