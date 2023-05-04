CREATE Database statsapp;

CREATE TABLE statsapp.player (
id INT NOT NULL,
name VARCHAR(45) NOT NULL,
height VARCHAR(45) NOT NULL,
weight VARCHAR(45) NOT NULL,
age VARCHAR(45) NOT NULL,
PRIMARY KEY (id));

CREATE TABLE statsapp.stats (
id INT NOT NULL,
points INT NOT NULL,
rebounds INT NOT NULL,
assists VARCHAR(45) NOT NULL,
steals VARCHAR(45) NOT NULL,
turnovers VARCHAR(45) NOT NULL,
td VARCHAR(45) NOT NULL,
rushing_yards VARCHAR(45) NOT NULL,
receiving_yards VARCHAR(45) NOT NULL,
passing_yards VARCHAR(45) NOT NULL,
player_id INT,
FOREIGN KEY(player_id) REFERENCES Player(id),
PRIMARY KEY (id));

CREATE TABLE statsapp.sport (
id INT NOT NULL,
sport VARCHAR(45) NOT NULL,
division VARCHAR(45) NOT NULL,
conference VARCHAR(45) NOT NULL,
player_id INT,
FOREIGN KEY(player_id) REFERENCES Player(id),
PRIMARY KEY (id));
