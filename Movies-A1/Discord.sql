
-- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
-- select * from oscar `category` LIKE '%Melhor Ator%'; errado
-- select * from oscar `category` LIKE '%Melhor Filme%'; errado
select SUM(name) from oscar where winner = 1;
select SUM(film) from oscar where winner = 1;
-- Melhor filme

-- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
select * 
from oscar 
ORDER BY year_ceremony DESC; -- ou ASC, verifique year_film;

-- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
update oscar set winner = 1 where winner = 'True';
update oscar set winner = 0 where winner = 'False';

-- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
-- crash o filme ou crash a pessoa?
select * 
from oscar 
where name = 'Crash' and winner = 1;-- identifique os premios principais
select * 
from oscar 
where `film` = 'Crash' and winner = 1; -- encontre os premios principais




-- lembretes, coluna/campo seria o atributo
-- DESC, do menor para o maior, ASC para maior
SELECT column1, column2
FROM oscar
ORDER BY column1, column2 ASC; -- ASC|DESC
-- COUNT(column_name), returna a quantidade de row daquele atributo
SELECT COUNT(ProductID)
FROM Products;
-- BETWEEN - retorna um intervalo
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;





-- ++ - discord new database

-- inner join junção da tabela
-- on = somente
Select * from funcionarios
inner join dependentes
on funcionarios.funcionario_id = dependentes.funcionario_id
inner join ocupacoes
on funcionarios.ocupacao_id = ocupacoes.ocupacao_id
where dependentes.funcionario_id = 100;
-- on funcionarios.funcionario_id = dependentes.funcionario_id - isso significa que somente oque os dois tiver o mesmo FOREIGN KEY será selecionado

-- AVG é a media
Select AVG(min_salario) from ocupacoes;
-- SUM é a soma
Select SUM(min_salario) from ocupacoes;

-- vimos tambem o foreing key, references, on, ON DELETE CASCADE ON UPDATE

-- AS é igual a Aliases, serve para renomear algo que vc chamou durante aquele intervalo
