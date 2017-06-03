-------- Anastasia Kassari 3130088 --------

-------- Create database --------
CREATE DATABASE IF NOT EXISTS quizdb DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE quizdb;

-------- Create User & Give privileges -------- 
CREATE USER 'quiz_user'@'localhost' IDENTIFIED BY 'quizdb';
GRANT ALL PRIVILEGES ON quizdb.* TO 'quiz_user'@'localhost';


-------- Create table for the questions --------
DROP TABLE IF EXISTS questions;
CREATE TABLE questions (
	id INT PRIMARY KEY,
	question VARCHAR(2048),
	answer1 VARCHAR(2048),
	answer2 VARCHAR(2048),
	answer3 VARCHAR(2048),
	answer4 VARCHAR(2048),
	answer5 VARCHAR(2048),
	answer6 VARCHAR(2048),
	correct INT
		CHECK (VALUE BETWEEN 1 AND 6),
	image VARCHAR(2048)
);

-------- Insert questions & answers in the table --------
INSERT INTO questions (id, question, answer1, answer2, answer3, answer4, answer5, answer6, correct, image) VALUES
	(1, 'What is the biggest planet in our solar system?', 'Mars', 'Venus', 'Jupiter', 'Neptune', 'Saturn', 'Pluto', 3, 'images/solar_system.jpg'),
	(2, 'What is the capital of United Arab Emirates?', 'Manilla', 'Doha', 'Riyadh', 'Manama', 'Abu Dhabi', 'Dubai', 5, 'images/uae_flag.jpg'),
	(3, 'Which country has the highest life expectancy in both sexes?', 'Japan', 'Switzerland', 'Australia', 'Canada', 'Iceland', 'Singapore', 1, 'images/life.png'),
	(4, 'What is the most read book in the world?', 'Harry Potter', 'The Lord of the Rings', 'The DaVinci Code', 'The Bible', 'The Alchemist', 'The Twiligh Saga', 4, 'images/book.png'),
	(5, 'What movie is the highest-grossing film worldwide?', 'Titanic', 'Marvel\'s The Avengers', 'Avatar', 'Star Wars: The Force Awakens', 'Furious 7', 'Jurassic World', 3, 'images/movie.jpg'),
	(6, 'Who is the richest person in the world as of 2017?', 'Amarcia Ortega', 'Bill Gates', 'Jeff Bezos', 'Mark Zuckerberg', 'Ingvar Kamprad', 'Warren Buffett', 2, 'images/rich.jpg'),
	(7, 'When did World War II started?', '1936', '1937', '1938', '1939', '1940', '1941', 4, 'images/ww2.jpg'),
	(8, 'What is the most common blood type?', 'A+', 'B+', 'AB+', 'AB-', 'O-', 'O+', 6, 'images/blood.jpg'),
	(9, 'Who was the 6th Prime Minister of Greece (after 1800)?', 'Alexandros Mavrokordatos', 'Petros Mavromichalis', 'Georgios Kountouriotis', 'Georgios Mavromichalis', 'Ioannis Kapodistrias', 'Augustinos Kapodistrias', 5, 'images/gr_flag.jpg'),
	(10, 'When was the Treaty of Lausanne signed?', '1923', '1924', '1933', '1934', '1953', '1954', 1, 'images/treaty.jpg'),
	(11, 'What country hosted the Games of the XXX Olympiad?', 'Atlanta', 'Sydney', 'Athens', 'Beijing', 'London', 'Rio de Janeiro', 5, 'images/olympiad.jpg'),
	(12, 'What is the most precious metal in the world?', 'Palladium', 'Gold', 'Iridium', 'Platinum', 'Osmium', 'Rhodium', 6, 'images/metals.jpg'),
	(13, 'When did Michael Jackson die?', 'June 2008', 'July 2008', 'June 2009', 'July 2009', 'June 2010', 'July 2010', 3, 'images/mj.jpg'),
	(14, 'Where is the largest stadium in the world located?', 'United States', 'North Korea', 'Australia', 'Spain', 'South Africa', 'United Kingdom', 2, 'images/stadium.jpg'),
	(15, 'What is the largest religion worldwide?', 'Islam', 'Christianity', 'Judaism', 'Hinduism', 'Buddhism', 'Taoism', 2, 'images/religion.jpg');