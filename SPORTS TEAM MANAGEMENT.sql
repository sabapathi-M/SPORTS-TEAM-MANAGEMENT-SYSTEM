# create a database for SPORTS TEAM MANAGEMENT called as 'kabaddi'
CREATE DATABASE kabaddi;
USE kabaddi;

# create table "team"
CREATE TABLE teams
(
team_id varchar(10) primary key,
team_name varchar(50) unique,
city varchar(50),
founted_year int,
coach_name varchar(50)
);
DESCRIBE teams;

#create table "players"
CREATE TABLE players
(
player_id varchar(10) primary key,
player_name varchar(50),
team_id varchar(10),
foreign key (team_id) references teams(team_id),
position varchar(50),
age int,
matches_played int,
total_points int,
average_points_per_game float
);
DESCRIBE players;

# create table "leagues"
CREATE TABLE leagues
(
league_id varchar(10) primary key,
league_name varchar(50),
season varchar(20),
start_date date,
end_date date
);
DESCRIBE leagues;

#create table "matches"
CREATE TABLE matches
(
match_id varchar(10) primary key,
league_id varchar(10),
foreign key (league_id) references leagues(league_id),
team_1_id varchar(10),
foreign key (team_1_id) references teams(team_id),
team_2_id varchar(10),
foreign key (team_2_id) references teams(team_id),
match_date datetime,
venue varchar(50),
winner_team_id varchar(10),
foreign key (winner_team_id) references teams(team_id)
);
DESCRIBE matches;


#create table "scores"
CREATE TABLE scores
(
score_id varchar(10) primary key,
match_id varchar(10),
foreign key (match_id) references matches(match_id),
team_id varchar(10),
foreign key (team_id) references teams(team_id),
points int
);
DESCRIBE scores;

ALTER TABLE players CHANGE age DOB DATE;
ALTER TABLE players CHANGE average_points_per_game points_per_match float;

SHOW TABLES;

# insert values into each tables

INSERT INTO teams VALUES
('t001', 'patna pirates', 'patna', 2014, 'Narender Redu'),
('t002', 'tamil thalaivas', 'chennai', 2017, 'udaya kumar'),
('t003', 'jaipur pink panthers', 'jaipur', 2014, 'Sanjeev Baliyan'),
('t004', 'dabang delhi', 'delhi', 2014, 'Legend Joginder Narwal'),
('t005', 'bengaluru bulls', 'bengaluru', 2013, 'Randhir Singh Sehrawat');

SELECT * FROM teams;


INSERT INTO players VALUES
('p0001', 'Ankit', 't001', 'All Rounder', '1999-07-20', 10, 35, 0),
('p0002', 'Devan', 't001', 'Raider', '2000-04-01', 10, 140, 12.72),
('p0003', 'Ayan', 't001', 'Left Raider', '2000-06-03', 10, 95, 7.5),
('p0004', 'Sandeep', 't001', 'Right Raider', '2003-05-24', 8, 21, 2.68),
('p0005', 'Deepak Singh', 't001', 'Defender, right cover', '1999-12-09', 10, 36, 0.54),
('p0006', 'Shubham', 't001', 'Defender, right cover', '1999-02-17', 9, 21, 0.1),
('p0007', 'Thiyagarajan', 't001', 'Defender, left corner', '2003-06-10', 7, 4, 0),
('p0008', 'Navdeep', 't001', 'Defender', '2005-02-05', 7, 7, 0),
('p0009', 'Gurdeep', 't001', 'All Rounder', '1999-07-26', 6, 11, 0.04),
('p0010', 'Sudhakar', 't001', 'Left Raider', '2002-03-18', 6, 11, 1.75),
('p0011', 'Parvinder', 't001', 'Right Raider', '2003-05-29', 3, 0, 0),
('p0012', 'Shail', 't002', 'Defender, left corner', '1999-09-25', 9, 18, 2),
('p0013', 'Narender', 't002', 'Raider', '2003-12-09', 9, 47, 6.3),
('p0014', 'Nitesh', 't002', 'Defender, left corner', '2004-08-19', 10, 35, 0.19),
('p0015', 'Amir', 't002', 'Defender', '2002-03-22', 10, 23, 0.19),
('p0016', 'Abishek', 't002', 'Defender, right cover', '2001-01-08', 8, 14, 0.01),
('p0017', 'Anuj', 't002', 'Raider', '2005-06-13', 8, 8, 0.83),
('p0018', 'Sachin', 't002', 'Raider', '1999-07-19', 9, 83, 4.5),
('p0019', 'Vishal', 't002', 'Right Raider', '2004-11-05', 5, 27, 3.25),
('p0020', 'Ranjith', 't002', 'Raider', '1991-07-06', 8, 14, 1.5),
('p0021', 'Moein', 't002', 'Raider', '1998-01-26', 9, 110, 7.35),
('p0022', 'Aashish', 't002', 'Defender, left cover', '2000-08-17', 9, 25, 0.21),
('p0023', 'Arjun', 't003', 'Raider', '1999-07-07', 8, 114, 10.22),
('p0024', 'Reza', 't003', 'Defender', '1997-05-22', 8, 34, 0.5),
('p0025', 'Surjeet', 't003', 'Defender, right cover', '1990-08-10', 8, 19, 1.72),
('p0026', 'Ankush', 't003', 'Defender, left corner', '2003-06-30', 8, 34, 2.9),
('p0027', 'Abhijet', 't003', 'Raider', '2001-10-07', 6, 47, 3),
('p0028', 'Lucky', 't003', 'Defender, right corner', '1994-10-15', 8, 20, 1.88),
('p0029', 'Neeraj', 't003', 'Raider', '2000-03-23', 8, 50, 4.35),
('p0030', 'Arpit', 't003', 'Defender, right corner', '2003-01-01', 2, 1, 0),
('p0031', 'Vikash', 't003', 'Raider', '1998-04-02', 4, 7, 0.31),
('p0032', 'Navnet', 't003', 'Raider', '2000-07-11', 1, 1, 1),
('p0033', 'Sombir', 't003', 'Right Raider', '2002-03-23', 4, 13, 1.5),
('p0034', 'Ashu', 't004', 'Right Raider', '1999-11-30', 8, 122, 11.38),
('p0035', 'Yogesh', 't004', 'Defender, right corner', '2000-12-07', 8, 35, 0.1),
('p0036', 'Ashish N', 't004', 'All Rounder', '2003-09-02', 8, 24, 1.72),
('p0037', 'Ashish Malik', 't004', 'Defender, left corner', '2002-06-05', 8, 21, 2.15),
('p0038', 'Nitin', 't004', 'All Rounder', '2000-03-31', 5, 7, 1.3),
('p0039', 'Vinay', 't004', 'Left Raider', '2000-09-25', 8, 38, 3.6),
('p0040', 'Sandeep', 't004', 'Defender, left cover', '2001-01-26', 8, 25, 1.27),
('p0041', 'Brijedra', 't004', 'All Rounder', '1999-06-17', 8, 6, 0.11),
('p0042', 'Mohit', 't004', 'Raider', '1995-09-15', 7, 19, 1.21),
('p0043', 'Vikrant', 't004', 'Defender, left cover', '2002-07-10', 8, 7, 1.6),
('p0044', 'Naveen', 't004', 'Raider', '2001-11-09', 8, 92, 6.35),
('p0045', 'Nitin', 't005', 'All Rounder', '1999-02-22', 10, 76, 1.09),
('p0046', 'Ajinkya Pawar', 't005', 'Raider', '2001-05-26', 10, 64, 3.64),
('p0047', 'Saurabh', 't005', 'Defender, right corner', '2000-09-30', 10, 37, 0.1),
('p0048', 'Pradeep Narwal', 't005', 'Left Raider', '1999-05-04', 10, 105, 5.53),
('p0049', 'Jai', 't005', 'Raider', '2002-08-18', 6, 33, 3.75),
('p0050', 'Parteek', 't005', 'All Rounder', '1998-09-12', 10, 28, 0.15),
('p0051', 'Pankaj', 't005', 'All Rounder', '2000-10-25', 6, 25, 1.66),
('p0052', 'Arul Nandha Babu', 't005', 'Defender, left corner', '2001-07-31', 8, 25, 0.06),
('p0053', 'Jatin', 't005', 'Right Raider', '1999-12-12', 6, 32, 2.5),
('p0054', 'Akshit', 't005', 'Raider', '2003-03-08', 5, 29, 2.45),
('p0055', 'Sushil', 't005', 'Left Raider', '2001-04-27', 7, 52, 3.33);

SELECT * FROM players;


INSERT INTO leagues VALUE
('L001', 'Play off', '2023-2024', '2023-12-10', '2023-12-30'),
('L002', 'Semi-Final', '2023-2024', '2024-01-02', '2023-01-04'),
('L003', 'Final', '2023-2024', '2024-01-07', '2024-01-07');

SELECT * FROM leagues;


INSERT INTO matches VALUES
('M001', 'L001', 't001', 't004', '2023-12-10 07:00:00', 'Chennai', 't001'),
('M002', 'L001', 't002', 't003', '2023-12-10 08:00:00', 'Jaipur', 't003'),
('M003', 'L001', 't005', 't004', '2023-12-11 07:00:00', 'Delhi', 't004'),
('M004', 'L001', 't001', 't002', '2023-12-11 08:00:00', 'Patna', 't002'),
('M005', 'L001', 't003', 't004', '2023-12-12 07:00:00', 'Bengaluru', 't003'),
('M006', 'L001', 't002', 't005', '2023-12-12 08:00:00', 'Chennai', 't002'),
('M007', 'L001', 't002', 't004', '2023-12-13 07:00:00', 'Delhi', 't002'),
('M008', 'L001', 't003', 't005', '2023-12-13 08:00:00', 'Jaipur', 't005'),
('M009', 'L001', 't001', 't003', '2023-12-14 07:00:00', 'Bengaluru', 't001'),
('M010', 'L001', 't002', 't004', '2023-12-14 08:00:00', 'Patna', 't002'),
('M011', 'L001', 't001', 't005', '2023-12-15 07:00:00', 'Bengaluru', 't005'),
('M012', 'L001', 't003', 't004', '2023-12-15 08:00:00', 'Patna', 't003'),
('M013', 'L001', 't001', 't002', '2023-12-16 07:00:00', 'Chennai', 't001'),
('M014', 'L001', 't003', 't005', '2023-12-16 08:00:00', 'Jaipur', 't005'),
('M015', 'L001', 't001', 't004', '2023-12-17 07:00:00', 'Delhi', 't001'),
('M016', 'L001', 't002', 't005', '2023-12-17 08:00:00', 'Bengaluru', 't005'),
('M017', 'L001', 't002', 't003', '2023-12-18 07:00:00', 'Jaipur', 't002'),
('M018', 'L001', 't001', 't005', '2023-12-18 08:00:00', 'Chennai', 't001'),
('M019', 'L001', 't004', 't005', '2023-12-19 07:00:00', 'Patna', 't005'),
('M020', 'L001', 't001', 't003', '2023-12-20 07:00:00', 'Delhi', 't001'),
('M021', 'L002', 't001', 't005', '2024-01-02 07:00:00', 'Patna', 't001'),
('M022', 'L002', 't005', 't002', '2024-01-04 07:00:00', 'Bengaluru', 't002'),
('M023', 'L003', 't001', 't002', '2024-01-07 07:00:00', 'Chennai', 't002');

SELECT * FROM matches;


INSERT INTO scores VALUES
('S001', 'M001', 't001', 35),
('S002', 'M001', 't004', 30),
('S003', 'M002', 't002', 38),
('S004', 'M002', 't003', 40),
('S005', 'M003', 't005', 27),
('S006', 'M003', 't004', 28),
('S007', 'M004', 't001', 35),
('S008', 'M004', 't002', 57),
('S009', 'M005', 't003', 35),
('S010', 'M005', 't004', 31),
('S011', 'M006', 't002', 43),
('S012', 'M006', 't005', 40),
('S013', 'M007', 't002', 38),
('S014', 'M007', 't004', 30),
('S015', 'M008', 't003', 32),
('S016', 'M008', 't005', 39),
('S017', 'M009', 't001', 39),
('S018', 'M009', 't003', 29),
('S019', 'M010', 't002', 30),
('S020', 'M010', 't004', 28),
('S021', 'M011', 't001', 35),
('S022', 'M011', 't005', 37),
('S023', 'M012', 't003', 37),
('S024', 'M012', 't004', 31),
('S025', 'M013', 't001', 28),
('S026', 'M013', 't002', 27),
('S027', 'M014', 't003', 29),
('S028', 'M014', 't005', 38),
('S029', 'M015', 't001', 25),
('S030', 'M015', 't004', 20),
('S031', 'M016', 't002', 35),
('S032', 'M016', 't005', 36),
('S033', 'M017', 't002', 30),
('S034', 'M017', 't003', 25),
('S035', 'M018', 't001', 34),
('S036', 'M018', 't005', 32),
('S037', 'M019', 't004', 25),
('S038', 'M019', 't005', 29),
('S039', 'M020', 't001', 36),
('S040', 'M020', 't003', 33),
('S041', 'M021', 't001', 40),
('S042', 'M021', 't005', 35),
('S043', 'M022', 't005', 30),
('S044', 'M022', 't002', 38),
('S045', 'M023', 't001', 40),
('S046', 'M023', 't002', 42);

SELECT * FROM scores;

/*Quries*/

# 1. Get a players from 'Patna Pirates'.
SELECT player_name, position, DOB, matches_played, total_points FROM players
WHERE team_id = 't001';

# 2. Get all matches from 'Play off'.
SELECT * FROM matches WHERE league_id = 'L001';

# 3. Find the top score form a specific team.alter
SELECT player_name, SUM(points) AS total_points FROM players JOIN scores ON players.team_id = scores.team_id
GROUP BY player_name ORDER BY total_points DESC LIMIT 1;

# 4. Find the total numbers of matches played by all teams.
SELECT team_name, COUNT(*) AS matches_played FROM teams
JOIN matches ON teams.team_id IN (matches.team_1_id, matches.team_2_id)
GROUP BY team_name;

# 5. Get the match details where the 'Tamil thalaivas' team played.
SELECT * FROM matches
WHERE team_1_id = 't002' OR team_2_id = 't002';

# 6. Get the highest total score in a single match.
SELECT match_id, MAX(points) AS highest_points FROM scores
GROUP BY match_id ORDER BY highest_points DESC LIMIT 1;

# 7. Get the detalis of match_id 3.
SELECT * FROM matches WHERE match_id = 'M003';

# 8. Get the list of players who have player more than 6 matches.
SELECT player_name, matches_played FROM players WHERE matches_played > 6;

# 9. Get the team with the most wims in 'play off' league.
SELECT winner_team_id, COUNT(*) AS wins FROM matches
WHERE league_id = 'L001' AND winner_team_id IS NOT NULL
GROUP BY winner_team_id ORDER BY wins DESC LIMIT 1;

# 10. Calculate the average points per match for each player,
SELECT player_name, AVG(points_per_match) AS average_points FROM players
GROUP BY player_name;

# 11. Find the winner of the final match. 
SELECT winner_team_id  FROM matches 
WHERE match_id = (SELECT match_id FROM matches WHERE league_id = 'L003' AND match_date = '2024-01-07 07:00:00');

# 12. Calculate the total numbers of matches held in each venue. 
SELECT venue, COUNT(match_id) AS total_matches FROM matches 
GROUP BY venue;


# End
