-- oscar responses
SELECT *  FROM oscar;

-- Quantas vezes Natalie Portman foi indicada ao Oscar?
SELECT *  FROM oscar WHERE name = 'Natalie Portman';
-- 3x

-- Quantos Oscars Natalie Portman ganhou?
SELECT COUNT(*), name FROM oscar WHERE name = 'Natalie Portman' and winner = '1';
-- 1x

-- Amy Adams já ganhou algum Oscar?
SELECT * FROM oscar where name LIKE "%Amy Adams%" and winner = 1;
-- não

-- A série de filmes Toy Story ganhou um Oscar em quais anos?
SELECT year_ceremony FROM oscar where film = 'Toy Story' ORDER BY year_ceremony ASC LIMIT 1;
-- 1996

-- Toy Story 3 ganhou um Oscar em quais anos?
select film, year_ceremony from oscar `film` where film LIKE '%Toy Story 3%' and winner = 1;
-- 2011

-- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
SELECT category, SUM(winner) FROM oscar WHERE category = "ACTOR" AND winner = 1;
-- 49
SELECT category, COUNT(winner) FROM oscar WHERE category = "CINEMATOGRAPHY" AND winner = 1;
-- 66
-- Melhor Filme

-- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
SELECT `name` , year_ceremony FROM oscar WHERE category = "ACTRESS" and winner = 1 ORDER BY year_ceremony ASC LIMIT 200;
-- Janet Gaynor, 1928

-- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
UPDATE oscar 
SET winner = 1 
WHERE winner = "True"; 

UPDATE oscar 
SET winner = 0 
WHERE winner = "False"; 
-- Concluid

-- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
SELECT year_ceremony FROM oscar WHERE film = "Crash" and winner = 1;
-- 2006

-- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
update oscar
set winner = 1
where film = 'Holiday';

-- O filme Central do Brasil aparece no Oscar?
SELECT `film` FROM oscar where film = "Central do Brasil";
-- não

-- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) 
VALUES ('2023', '2023', '1', 'ACTION', 'Scott Beck', '65 - Ameaça Pré-Histórica', 1);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) 
VALUES ('2023', '2023', '1', 'ACTION', 'Guy Ritchie', 'Esquema de Risco: Operação Fortune', 1);
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) 
VALUES ('1904', '2023', '1', 'ACTION', 'William Steig', 'Peter Pan', 1);

-- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima
ALTER TABLE oscar ADD COLUMN premiacao varchar(255);
update oscar set premiacao = 'Dinossauro gigante' where film = '65 - Ameaça Pré-Histórica';
update oscar set premiacao = 'Diamante' where film = 'Esquema de Risco: Operação Fortune';
update oscar set premiacao = 'Fadinhas' where film = 'Peter Pan' ;
-- select * from oscar where film = "Peter Pan";

-- Qual foi o primeiro ano a ter um prêmio do Oscar?
SELECT year_ceremony FROM oscar WHERE winner = 1 ORDER BY year_ceremony LIMIT 2;
-- 1928

-- Pensando no ano em que você nasceu: Qual foi o Oscar de Melhor Filme, Melhor Atriz e Melhor Diretor?
SELECT * FROM oscar WHERE year_ceremony = 2001 and category IN ('ACTOR', 'ACTRESS', 'DIRECTING') and winner = 1;
-- Steven Soderbergh

-- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
INSERT INTO oscar (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES 
('2000', '2001', '1', 'ACTION', 'Zhang Ziyi ', 'O Tigre e o Dragão', 0),
('2004', '2005', '1', 'ACTION', 'Gong Li', 'O Clã das Adagas Voadoras', 0),
('2002', '2003', '1', 'ROMANCE', 'Aishwarya Rai Bachchan', 'Devdas', 0),
('2013', '2014', '1', 'ACTION', 'Deepika Padukone', 'Chennai Express', 0),
('2016', '2017', '1', 'COMEDY', 'Jeon Do-yeon', 'A Criada', 0),
('2014', '2015', '1', 'DRAMA', 'Song Hye-kyo', 'My Brilliant Life', 0),
('2011', '2012', '1', 'ACTION', 'Zhang Zilin', 'The Underdog Knight 2', 0);
                        
-- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?
Insert into oscar (name, premiacao) VALUES ('Sirlene', 'Muito amor');
select name, premiacao from oscar where name = 'Sirlene';
