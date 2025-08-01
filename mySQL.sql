create database Cricket
use Cricket
CREATE TABLE Cricket(
player INTEGER PRIMARY KEY,
name VARCHAR(20) NOT NULL,
skills VARCHAR(20) NOT NULL,
age INTEGER NOT NULL);
INSERT INTO Cricket (player,name,skills,age)VALUES
(1,'Virat','batsman',36),
(2,'Rohit','batsman',38),
(3,'K L Rahul','wicketkeeper',32);
SELECT*FROM Cricket;
UPDATE Cricket
SET name='Rishap',
skills='wicketkeeper',
age=30 WHERE player=3;
INSERT INTO Cricket(player,name,skills,age)
VALUES(4,'K L Rahul','wicketkeeper',32);
ALTER TABLE Cricket
ADD player_role VARCHAR(20);
UPDATE Cricket
SET player_role='top order' WHERE player=2;


SELECT COUNT(*) AS tot_player FROM Cricket;
SELECT MAX(age) AS max_age FROM Cricket;
SELECT MIN(age) AS min_age FROM Cricket;
SELECT AVG(age) AS avg_age FROM Cricket;
SELECT skills,COUNT(*) AS skill_count FROM Cricket GROUP BY skills;
SELECT skills,MAX(age) AS max_age FROM Cricket
GROUP BY skills;
SELECT skills,MIN(age) AS min_age FROM Cricket
GROUP BY skills;
SELECT *FROM Cricket
ORDER BY age ASC;
SELECT*FROM Cricket
ORDER BY age DESC;
SELECT*FROM Cricket
ORDER BY name; 
SELECT*FROM Cricket
ORDER BY skills DESC;



SELECT UPPER(skills) AS fjj FROM Cricket;
SELECT UPPER(name) AS name FROM Cricket;
SELECT LOWER(name) AS name FROM Cricket;
SELECT LEFT(name,2) AS srt FROM Cricket;
SELECT name,LENGTH(name) AS len_name FROM Cricket;
SELECT CONCAT(name,' = ',Skills) AS cmbn FROM Cricket;

SELECT name,age,age+1 AS age_of FROM Cricket;
SELECT player,MOD(player,2) AS ord FROM Cricket;  

ALTER TABLE Cricket
ADD Date_ DATE;

SELECT*FROM Cricket;
UPDATE Cricket SET Date_ ='2016-07-07' WHERE player=1;
UPDATE Cricket SET Date_ ='2016-07-06' WHERE player=2;
UPDATE Cricket SET Date_ ='2016-07-10' WHERE player=3;
UPDATE Cricket SET Date_ ='2016-07-13' WHERE player=4;


SELECT CURDATE();
SELECT CURTIME();

SELECT player,name,YEAR(Date_) AS yr FROM Cricket;

