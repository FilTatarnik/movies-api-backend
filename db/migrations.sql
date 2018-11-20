DROP DATABASE IF EXISTS salty_movies;
CREATE DATABASE salty_movies;

\c salty_movies

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(64),
	password_digest VARCHAR(60)
);

CREATE TABLE movies(
	id SERIAL PRIMARY KEY,
	title VARCHAR(64),
	description VARCHAR(200),
	user_id INTEGER REFERENCES users(id)
);

INSERT INTO movies (title, description, user_id) VALUES ('Interstellar', 'space movie about space', 1);
INSERT INTO movies (title, description, user_id) VALUES ('Dodgeball', 'duck, dive,dip, dive, dodge', 1);
INSERT INTO movies (title, description, user_id) VALUES ('James Bond', 'british action', 2);
INSERT INTO movies (title, description, user_id) VALUES ('Free Willy', 'save the whales', 2);
INSERT INTO users (username, password_digest) VALUES ('jared','123');
INSERT INTO users (username, password_digest) VALUES ('sam','123');