CREATE TABLE inventory (
	movie_title VARCHAR(120) NOT NULL,
	raw_title VARCHAR(120) NOT NULL,
	movie_poster VARCHAR(100) NOT NULL,
	movie_overview MEDIUMTEXT NOT NULL,
	movie_genres VARCHAR(50) NOT NULL,
	user_id VARCHAR(50) NOT NULL,
	in_queue VARCHAR(50) NOT NULL,
	date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	raw_id INT AUTO_INCREMENT PRIMARY KEY
);


CREATE TABLE history (
	movie_title VARCHAR(120) NOT NULL,
	raw_title VARCHAR(120) NOT NULL,
	movie_poster VARCHAR(100) NOT NULL,
	movie_overview MEDIUMTEXT NOT NULL,
	user_id VARCHAR(50) NOT NULL,
	date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	raw_id INT AUTO_INCREMENT PRIMARY KEY
);


CREATE TABLE users (
	username VARCHAR(100) NOT NULL,
	pword VARCHAR(100) NOT NULL,
	user_id VARCHAR(50) NOT NULL,
	file_path VARCHAR(50) NOT NULL,
	date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	raw_id INT AUTO_INCREMENT PRIMARY KEY
);