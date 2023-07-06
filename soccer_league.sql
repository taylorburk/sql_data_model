DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE team_roster
(
  team_id SERIAL PRIMARY KEY,
  team_name TEXT NOT NULL,
  season_start TEXT NOT NULL,
  season_end TEXT NOT NULL,
  team_ranking INT 
);

CREATE TABLE referees
(
    referree_id SERIAL PRIMARY KEY,
    ref_name TEXT NOT NULL,
    match_name TEXT NOT NULL
);
CREATE TABLE players
(
    player_id SERIAL PRIMARY KEY,
    player_name TEXT NOT NULL,
    goal_number INT,
    team_name TEXT NOT NULL
);

CREATE TABLE matches
(
    match_id SERIAL PRIMARY KEY,
    match_name TEXT NOT NULL,
    match_outcome TEXT NOT NULL
);

INSERT INTO team_roster
  (team_id,team_name, season_start,season_end, team_ranking)
VALUES
    ('1','Python','August 1','May 2', 2),
    ('2','Vipers','August 1','April 25', 3),
    ('3','Panthers','August 1','May 2', 1),
    ('4','Cheetas','August 1','April 22', 5),
    ('5','Ravens','August 1', 'April 28', 4);

INSERT INTO players
    (player_id, player_name,goal_number,team_name)
VALUES
    ('1','Lia','1','Python'),
    ('2','Mia','2','Python'),
    ('3','Dil','2','Python'),
    ('4','Eli','3','Python'),
    ('5','Max','2','Python'),
    ('6','Dave','1','Vipers'),
    ('7','Vix','2','Vipers'),
    ('8','Mila','3','Vipers'),
    ('9','Pia','1','Vipers'),
    ('10','Dean','1','Vipers'),
    ('11','Bobby','2','Panthers'),
    ('12','Bobbi','3','Panthers'),
    ('13','Sammy','5','Panthers'),
    ('14','Vane','2','Panthers'),
    ('15','Lori','4','Panthers'),
    ('16','Ash','1','Cheetas'),
    ('17','Mark','1','Cheetas'),
    ('18','Mike','1','Cheetas'),
    ('19','Matt','1','Cheetas'),
    ('20','Rave','1','Cheetas'),
    ('21','Rain','1','Ravens'),
    ('22','Ariel','2','Ravens'),
    ('23','Eric','2','Ravens'),
    ('24','Maria','1','Ravens'),
    ('25','Sofia','1','Ravens');

INSERT INTO referees
    (referree_id,ref_name,match_name)
VALUES
    ('1','Tom','Python vs Panthers'),
    ('2','Bill','Vipers vs Ravens'),
    ('3','Sam','Ravens vs Panthers'),
    ('4','Tim','Cheetas vs Pythons');

INSERT INTO matches
    (match_id, match_name, match_outcome)
VALUES
    ('1','Python vs Panthers','Panthers'),
    ('2','Ravens vs Panthers','Panthers'),
    ('3','Vipers vs Ravents','Ravens'),
    ('4','Cheetas vs Pythons','Python');
