DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Homer Simpson');
INSERT INTO people (name) VALUES ('Marge Simpson');
INSERT INTO people (name) VALUES ('Lisa Simpson');
INSERT INTO people (name) VALUES ('Maggie Simpson');
INSERT INTO people (name) VALUES ('Patty Bouvier');
INSERT INTO people (name) VALUES ('Selma Bouvier');
INSERT INTO people (name) VALUES ('Kent Brockman');
INSERT INTO people (name) VALUES ('Ned Flanders');
INSERT INTO people (name) VALUES ('Barney Gumble');
INSERT INTO people (name) VALUES ('Itchy');
INSERT INTO people (name) VALUES ('Eric Cartman');
INSERT INTO people (name) VALUES ('Scratchy');
INSERT INTO people (name) VALUES ('Crusty the Clown');
INSERT INTO people (name) VALUES ('Montgomery Burns');
INSERT INTO people (name) VALUES ('Mayor Joe Quimby');
INSERT INTO people (name) VALUES ('Groundskeeper Willie');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:00');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '15:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '14:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '14:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '22:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '13:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '18:25');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '13:10');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '20:20');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '12:35');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '23:00');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '21:00');

-- Return ALL the data in the 'movies' table.
-- SELECT * FROM movies;

-- Return ONLY the name column from the 'people' table
-- SELECT name FROM people;

-- Oops! Someone spelled Krusty The Clown's name wrong! Change it to reflect the proper spelling (Crusty should be Krusty).
-- UPDATE people SET name = 'Krusty the Clown' WHERE name = 'Crusty the Clown';
-- UPDATE people SET name = 'Krusty the Clown' WHERE id = 13; -- better to use ID as it's unique

-- Return ONLY Homer Simpson's name from the 'people' table.
-- SELECT name FROM people WHERE id = 1;

-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
-- DELETE FROM movies WHERE title = 'Batman Begins';
-- DELETE FROM movies WHERE id = 9;

-- We forgot one of the main characters! Add Bart Simpson to the 'people' table
-- INSERT INTO people (name) VALUES ('Bart Simpson');

-- Eric Cartman has decided to hijack our movie evening, Remove him from the table of people.
-- DELETE FROM people WHERE name = 'Eric Cartman';
-- DELETE FROM people WHERE id = 11;

-- The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
-- INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2019, '24:00');

-- The cinema would like to make the Iron Man movies a triple billing. Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3" to start two hours later.
-- SELECT show_time FROM movies WHERE title = 'Iron Man 2'; --18:45
-- SELECT show_time FROM movies WHERE id = 3; --18:45
-- UPDATE movies SET show_time = '20:45' WHERE title = 'Iron Man 3';
-- UPDATE movies SET show_time = '20:45' WHERE id = 7;


-- Research how to delete multiple entries from your table in a single command.
-- DELETE FROM movies WHERE year <> 2017; -- delete all but the movies made in 2017
-- DELETE FROM people WHERE id IN (1, 2, 3); -- delete the rows with the id 1, 2 and 3 from people IN = INCLUDES
-- DELETE FROM people WHERE id >= 1 AND id <= 3; --delete the rows with the id 1, 2 and 3 from people
-- DELETE FROM movies WHERE year BETWEEN 2008 AND 2012; -- deletes all movies made between 2008 and 2012 including.
-- DELETE FROM movies WHERE show_time BETWEEN '13:00' AND '22:55'; deletes all movies showing betwee 1 and 22:55
-- DELETE FROM people WHERE name LIKE '%Simpson'; -- deletes all the people with lastname Simpson don't care about anything that comes before it % is a wildcard character.
