-- LeetCode #1341 Problem: Movie Rating
-- Difficulty: Medium

-- Tables:
-- Movies: movie_id, title
-- Users: user_id, name
-- MovieRating: movie_id, user_id, rating, created_at

-- Task:
-- 1. Find the user who has rated the greatest number of movies, If there is a tie, return the lexicographically smaller name
-- 2. Find the movie with the highest average rating in February 2020, If there is a tie, return the lexicographically smaller movie title.
-- lexicographically means Alphabetically

-- Approach:
-- 1. Count the number of movies rated by each user and sort by rating count descending, then user name ascending.
-- 2. Calculate the average rating of each movie for February 2020 and sort by average rating descending, then movie title ascending.
-- 3. Use LIMIT 1 in both CTEs to get the required user and movie.
-- 4. Combine both results using UNION ALL.

WITH most_ratings_user AS (
    SELECT
        us.name AS user_name, COUNT(mr.rating) AS number_of_ratings
    FROM users AS us JOIN movierating AS mr
        ON us.user_id = mr.user_id
    GROUP BY us.user_id, us.name
    ORDER BY number_of_ratings DESC, us.name ASC
    LIMIT 1
),
highest_average_movie AS (
    SELECT m.title AS movie_title, AVG(mr.rating) AS rating
    FROM movies AS m JOIN movierating AS mr
        ON m.movie_id = mr.movie_id
    WHERE mr.created_at >= '2020-02-01' AND mr.created_at < '2020-03-01'
    GROUP BY m.title
    ORDER BY rating DESC, m.title ASC
    LIMIT 1
)
SELECT user_name AS results
FROM most_ratings_user
UNION ALL
SELECT movie_title
FROM highest_average_movie;
