DROP TABLE IF EXISTS positions;

CREATE TABLE positions (

	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	description TEXT,
	rating INTEGER,
	image TEXT

);

INSERT INTO positions(title, description, rating, image) VALUES ('Cat Pose', 'This pose provides a gentle massage to the spine and belly organs.', 2, 'https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_60%2Cw_1920/MTQ3MTc0NjYxMzIxNDAxODA2/2hp_286_0574_bjk.jpg');
INSERT INTO positions(title, description, rating, image) VALUES ('Cobra Pose', 'Open the heart and roll the shoulders down to promote flexibility in Cobra Pose.', 3, 'https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_60%2Cw_1920/MTQ3MTU3MjczOTUxNjEwMzE4/3yp_287_6710_gn_bjk.jpg');
INSERT INTO positions(title, description, rating, image) VALUES ('Childs Pose', 'Take a break. Balasana is a restful pose that can be sequenced between more challenging asanas.', 2, 'https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_60%2Cw_1920/MTQ3MTU3MzE1MDIyMjM1NDM5/3yp_287_6604_gn_bjk.jpg');
INSERT INTO positions(title, description, rating, image) VALUES ('Downward-Facing Dog', 'Deservedly one of yoga most widely recognized yoga poses, Adho Mukha Svanasana, offer the ultimate all-over, rejuvenating stretch.', 4, 'https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_60%2Cw_1920/MTQ3MTU2NzMwOTA2NjgyODMw/2hp_290_1721_bjk.jpg');