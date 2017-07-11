DROP TABLE IF EXISTS positions;

CREATE TABLE positions (

	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	description TEXT

);

INSERT INTO positions(title, description) VALUES ('Position 1', 'A description 1');
INSERT INTO positions(title, description) VALUES ('Position 2', 'A description 2');
INSERT INTO positions(title, description) VALUES ('Position 3', 'A description 3');
INSERT INTO positions(title, description) VALUES ('Position 4', 'A description 4');