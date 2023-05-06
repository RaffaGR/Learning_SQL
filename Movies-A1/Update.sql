-- não esqueça que é apenas em uma linha, dividimos para ficar mais compreensivel
-- UPDATE oscar SET winner = 0 WHERE winner = "False";
-- a database tem que estar em modo use, ou seja, dois click nela

UPDATE oscar
SET winner = 0
WHERE winner = "False";

UPDATE oscar
SET winner = 1
WHERE winner = "True";

-- Deleta um item da lista pelo id
DELETE FROM oscar where id_movie = 1;

-- Depois de apagar e tentar inserir itens, ele continuará onde parou
-- O 1 só será colocado se forçar dessa forma
INSERT INTO oscar (id_movie, year_film, year_ceremony, ceremony, category, `name`, film, winner) 
VALUES (1, '1927', '1928', '1', 'ACTOR', 'Richard Barthelmess', 'The Noose', 'False');