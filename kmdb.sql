-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS characters;

-- Create new tables, according to your domain model
-- TODO!

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year_released TEXT,
  MPAA_rating TEXT,
  director_id TEXT
);

CREATE TABLE directors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  actor_id TEXT,
  movie_id TEXT,
  character_name TEXT
);



-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO movies (
  title,
  year_released,
  MPAA_rating,
  director_id
)

VALUES (
  "Batman Begins",
  "2005",
  "PG-13",
  "1"
);

INSERT INTO movies (
  title,
  year_released,
  MPAA_rating,
  director_id
)

VALUES (
  "The Dark Knight",
  "2008",
  "PG-13",
  "1"
);

INSERT INTO movies (
  title,
  year_released,
  MPAA_rating,
  director_id
)

VALUES (
  "The Dark Knight Rises",
  "2012",
  "PG-13",
  "1"
);

INSERT INTO directors (
  first_name,
  last_name
)

VALUES (
  "Christopher",
  "Nolan"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Christian",
  "Bale"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Michael",
  "Cane"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Liam",
  "Neeson"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Katie",
  "Holmes"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Gary",
  "Oldman"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Heath",
  "Ledger"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Aaron",
  "Eckhart"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Maggie",
  "Gyllenhaal"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Tom",
  "Hardy"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Joseph",
  "Gordon-Levitt"
);

INSERT INTO actors (
  first_name,
  last_name
)

VALUES (
  "Anne",
  "Hathaway"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "1",
  "1",
  "Bruce Wayne"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "2",
  "1",
  "Alfred"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "3",
  "1",
  "Ra's Al Ghul"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "4",
  "1",
  "Rachel Dawes"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "5",
  "1",
  "Comissioner Gordon"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "1",
  "2",
  "Bruce Wayne"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "6",
  "2",
  "Joker"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "7",
  "2",
  "Harvey Dent"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "2",
  "2",
  "Alfred"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "8",
  "2",
  "Rachel Dawes"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "1",
  "3",
  "Bruce Wayne"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "5",
  "3",
  "Commissioner Gordon"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "9",
  "3",
  "Bane"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "10",
  "3",
  "John Blake"
);

INSERT INTO characters (
  actor_id,
  movie_id,
  character_name
)

VALUES (
  "11",
  "3",
  "Selina Kyle"
);

.mode columns
.headers on

--Added in the code below to check databases, but I turned it to text for the assignment
--SELECT id, title, year_released, MPAA_rating,director_id
--FROM movies;

--SELECT id, first_name, last_name
--FROM directors;

--SELECT id, first_name, last_name
--FROM actors;

--SELECT id, actor_id, movie_id, character_name
--FROM characters;

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

SELECT movies.title, movies.year_released, movies.MPAA_rating, directors.first_name, directors.last_name
FROM directors
    INNER JOIN movies ON movies.director_id = directors.id;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""

-- The SQL statement for the cast output
-- TODO!

SELECT movies.title, actors.first_name, actors.last_name, characters.character_name
FROM characters
    INNER JOIN actors ON characters.actor_id = actors.id
    INNER JOIN movies ON characters.movie_id = movies.id;