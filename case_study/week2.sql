/*
1. **Data Manipulation:**
    - **Insert a New Movie:** Add a new movie titled "A New Dawn," released in 2023, with a genre of "Drama." Set an initial average rating of 8.2.
*/

INSERT INTO Movies (movie_id, title, release_year, genre_id, rating)
VALUES
    (106, 'A New Dawn', 2023, 3, 8.2);
	
SELECT *
FROM Movies;



/*
2. **Aggregation Functions:**
    - **Total Viewing Hours by Genre:** Calculate the total viewing hours for each genre.
    - **Average Rating by Genre:** Find the average rating for movies in each genre.
*/

-- 2-1
SELECT Movies.genre_id, sum(Viewership.duration)
FROM Viewership
JOIN Movies ON Movies.movie_id = Viewership.movie_id
GROUP BY genre_id;

-- 2-2
SELECT Movies.genre_id, avg(Movies.rating)
FROM Viewership
JOIN Movies ON Movies.movie_id = Viewership.movie_id
GROUP BY genre_id;



/*
3. **Group By and Having Clauses:**
    - **Genres with High Average Rating:** List genres where the average rating of movies is above 7.5.
    - **Genres with High Viewing Hours:** Identify genres where the total viewing hours exceed 5000 minutes.
*/

-- 3-1
SELECT genre_id, avg(rating) as avg_rating
FROM Movies
GROUP BY genre_id
HAVING avg_rating > 7.5;

-- 3-2
SELECT Movies.genre_id, sum(Viewership.duration) as total_duration
FROM Viewership
JOIN Movies ON Movies.movie_id = Viewership.movie_id
GROUP BY genre_id
HAVING total_duration > 5000/60;



/*
4. **Join Operations:**
    - **Movies by Genre:** Retrieve a list of genres and the count of movies in each genre.
    - **Average Viewing Duration by User:** Find the average viewing duration for each user.
*/

-- 4-1
SELECT Genres.name, count(*)
FROM Movies
JOIN Genres ON Genres.genre_id = Movies.genre_id
GROUP BY Genres.name

-- 4-2
SELECT Users.user_id, avg(Viewership.duration)
FROM Viewership
JOIN Users ON Users.user_id = Viewership.user_id
GROUP BY Users.user_id
