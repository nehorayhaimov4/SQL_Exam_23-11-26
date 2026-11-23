part B-
GROUP BY Queries:

1. SELECT genre, COUNT(*) AS movie_count
    FROM movies
    GROUP BY genre;

2. SELECT year, SUM(revenue) AS total_revenue
    FROM movies
    GROUP BY year;

3. SELECT genre, AVG(revenue) AS average_revenue
    FROM movies
    GROUP BY genre;

4. SELECT language, genre, AVG(revenue) AS average_revenue
   FROM movies
   GROUP BY language, genre;

7. SELECT genre, COUNT(*) AS movie_count
    FROM movies
    GROUP BY genre
    HAVING COUNT(*) > 2;

8. SELECT year, SUM(revenue) AS total_revenue
    FROM movies
    GROUP BY year
    HAVING SUM(revenue) > 1000;
