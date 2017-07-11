DROP TABLE IF EXISTS positions;

CREATE TABLE positions (

	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	description TEXT,
	rating INTEGER

);

INSERT INTO positions(title, description, rating) VALUES ('Position 1', 'A description 1', 4);
INSERT INTO positions(title, description, rating) VALUES ('Position 2', 'A description 2', 5);
INSERT INTO positions(title, description, rating) VALUES ('Position 3', 'A description 3', 2);
INSERT INTO positions(title, description, rating) VALUES ('Position 4', 'A description 4', 1);