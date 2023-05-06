-- where - (onde/contenha), use CTRL ENTER THIS CODE

-- select * from oscar;

select film, name, winner from oscar;

select * from oscar WHERE ceremony = 1;
select * from oscar WHERE winner = 'True';

SELECT * FROM `oscar` where name LIKE "%Amy";
SELECT * FROM `oscar` where name LIKE "%Amy%";
SELECT * FROM `oscar` where name LIKE "Amy%";

SELECT name, winner FROM `oscar` where name LIKE "Amy%" AND winner = "False";

SELECT name, film FROM `oscar` where name LIKE "%Pri%" ORDER BY film DESC;

-- LIKE para localizar palavras especificas
SELECT COUNT(*) FROM `oscar` where name LIKE "%Natalie Portman%" and winner = 'True';
SELECT * FROM `oscar` where name LIKE "Natalie Portman";
Select * from `oscar` where name LIKE "Amy Adams%" and winner = '0';
Select * from `oscar` where name LIKE "%Amy Adams" and winner = 'False';

select * from oscar where film LIKE "%Toy Story 3%";

select SUM(name) from oscar where winner = 1;
select SUM(film) from oscar where winner = 1;

select year_ceremony from oscar where winner = 1 ORDER BY year_ceremony asc;

update oscar set winner = 1 where winner = 'True';
update oscar set winner = 0 where winner = 'False';

select * from oscar where film = "Crash" and winner = 1;

select film, winner from oscar where winner = 0;

update oscar
set winner = 1
where film = 'Holiday';


INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) 
VALUES ('2023', '2023', '1', 'ACTION', 'Scott Beck', '65 - Ameaça Pré-Histórica', 1);

INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) 
VALUES ('2023', '2023', '1', 'ACTION', 'Guy Ritchie', 'Esquema de Risco: Operação Fortune', 1);

INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) 
VALUES ('1904', '2023', '1', 'ACTION', 'William Steig', 'Peter Pan', 1);

select * from oscar where year_ceremony = 2001 and winner = 1 order by film desc;

INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2000', '2001', '1', 'ACTION', 'Zhang Ziyi ', 'O Tigre e o Dragão', 0);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2004', '2005', '1', 'ACTION', 'Gong Li', 'O Clã das Adagas Voadoras', 0);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2002', '2003', '1', 'ROMANCE', 'Aishwarya Rai Bachchan', 'Devdas', 0);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2013', '2014', '1', 'ACTION', 'Deepika Padukone', 'Chennai Express', 0);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2016', '2017', '1', 'COMEDY', 'Jeon Do-yeon', 'A Criada', 0);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2014', '2015', '1', 'DRAMA', 'Song Hye-kyo', 'My Brilliant Life', 0);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2011', '2012', '1', 'ACTION', 'Zhang Zilin', 'The Underdog Knight 2', 0);

DROP TABLE IF EXISTS premiation;
CREATE TABLE premiation (
	`id_movie` INT PRIMARY KEY AUTO_INCREMENT,
    filmOrAtor VARCHAR(512),
    premiation VARCHAR(512)
);
-- INT(11) sera removido nas proximas atualização ficando apenas INT, IF NOT EXISTS será removido tambem!

SELECT * FROM oscar WHERE year_ceremony = 2001 and category IN ('ACTOR', 'ACTRESS', 'DIRECTING') and winner = 1;

Insert into premiation (filmOrAtor, premiation) VALUES ('65 - Ameaça Pré-Histórica', 'Dinossauro falso, gigante');
Insert into premiation (filmOrAtor, premiation) VALUES ('Esquema de Risco: Operação Fortune', 'Diamante');
Insert into premiation (filmOrAtor, premiation) VALUES ('Peter Pan', 'Fadas reais');

Insert into premiation (filmOrAtor, premiation) VALUES ('Sirlene', 'Muito amor');

SELECT category, COUNT(category) FROM oscar 
WHERE category LIKE '%ACTOR' 
OR category LIKE '%CINEMATOGRAPHY' 
AND winner LIKE '%True%' 
GROUP BY name;

SELECT *, COUNT(category) FROM oscar 
WHERE category LIKE '%ACTOR' 
OR category LIKE '%CINEMATOGRAPHY' 
AND winner LIKE '%True%' 
GROUP BY name;