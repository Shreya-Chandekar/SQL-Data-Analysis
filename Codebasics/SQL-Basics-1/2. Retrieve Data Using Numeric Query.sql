#Retrieve data using numeric query (BETWEEN, IN, ORDER BY, LIMIT, OFFSET)

#Which movies had greater than 9 imdb rating?
	SELECT *
    FROM movies
    WHERE imdb_rating >= 9;
    
#Movies with rating between 6 and 8
#Approach 1
    SELECT *
    FROM movies
    WHERE imdb_rating >= 6 AND imdb_rating <= 8;
#Approach 2
    SELECT *
    FROM movies
    WHERE imdb_rating BETWEEN 6 AND 8;
    
#Select all movies whose release year can be 2018 or 2019 or 2022
#Approach 1
    SELECT *
    FROM movies 
    WHERE release_year = 2018 OR release_year = 2019 OR release_year = 2022;
#Approach 2
	SELECT *
    FROM movies
    WHERE release_year IN (2018, 2019, 2022);
    
#All movies where imdb rating is not available (imagine the movie is just released)
	SELECT *
    FROM movies
    WHERE imdb_rating IS NULL;
    
#All movies where imdb rating is available 
	SELECT *
    FROM movies
    WHERE imdb_rating IS NOT NULL;
    
#Print all bollywood movies ordered by their imdb rating
	SELECT *
    FROM movies
    WHERE industry = "Bollywood"
    ORDER BY imdb_rating ASC;
    
#Print first 5 bollywood movies with highest rating
	SELECT *
    FROM movies
    WHERE industry = "Bollywood"
    ORDER BY imdb_rating DESC
    LIMIT 5;
    
#Select movies starting from second highest rating movie till next 5 movies for bollywood
	SELECT *
    FROM movies
    WHERE industry = "Bollywood"
    ORDER BY imdb_rating DESC
    LIMIT 5
    OFFSET 1;
    
#Print all movies in the order of their release year (latest first)
	SELECT *
    FROM movies
    ORDER BY release_year DESC;
    
#All movies released in the year 2022
	SELECT *
    FROM movies
    WHERE release_year = 2022;
    
#Now all the movies released after 2020
	SELECT *
    FROM movies
    WHERE release_year > 2020;
    
#All movies after the year 2020 that have more than 8 rating
	SELECT *
    FROM movies
    WHERE release_year > 2020 AND imdb_rating > 8;
    
#Select all movies that are by Marvel studios and Hombale Films
#Approach 1
    SELECT *
    FROM movies
    WHERE studio = "Marvel studios" OR studio = "Hombale Films";
#Approach 2
    SELECT *
    FROM movies
    WHERE studio IN ("Marvel studios", "Hombale Films");
    
#Select all THOR movies by their release year
	SELECT *
    FROM movies
    WHERE title LIKE '%THOR%'
    ORDER BY release_year ASC; 
    
#Select all movies that are not from Marvel Studios
#Approach 1
    SELECT *
    FROM movies
    WHERE studio <> "Marvel Studios";
#Approach 2
	SELECT *
    FROM movies
    WHERE studio != "Marvel Studios";