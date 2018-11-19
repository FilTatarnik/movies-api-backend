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

