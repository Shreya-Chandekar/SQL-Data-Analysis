#Retrieve Data Using Text Query (SELECT, WHERE, DISTINCT, LIKE)

#to select the Database that we want to use
	USE moviesdb; 

#Simply print all the movies
	SELECT * 
    FROM movies;  

#Get movie title and industry for all the movies
	SELECT title, industry 
    FROM movies; 

#Print all moves from Hollywood 
	SELECT * 
    FROM movies 
    WHERE industry = "Hollywood"; 

#Print all moves from Bollywood
	SELECT * 
    FROM movies 
    WHERE industry = "Bollywood"; 

#Get all the unique industries in the movies database
	SELECT distinct industry 
    FROM movies;

#Select all movies that starts with THOR
	SELECT * 
    FROM movies 
    WHERE title LIKE '%THOR%';

#Select all movies that have 'America' word in it. That means to select all captain America movies
	SELECT * 
    FROM movies 
    WHERE title LIKE '%America%';
    
#How many hollywood movies are present in the database?
	SELECT Count(*) 
    FROM movies 
    WHERE industry = "Hollywood"; 
    
#Print all  movies where we don't know the value of the studio
	SELECT * 
    FROM movies 
    WHERE studio ='';
    
#Print all movie titles and release year for all Marvel Studios movies
	SELECT title, release_year 
    FROM movies 
    WHERE studio LIKE '%Marvel%';
    SELECT title, release_year 
    FROM movies 
    WHERE studio="Marvel Studios";
    
#Print all movies that have Avenger in their name
	SELECT * 
    FROM movies 
    WHERE title LIKE '%Avenger%';
    
#Print the year when the movie "The Godfather" was released
	SELECT release_year 
    FROM movies 
    WHERE title = "The Godfather";
    
#Print all distinct movie studios in the Bollywood industry.
	SELECT DISTINCT studio 
    FROM movies 
    WHERE industry = "Bollywood";