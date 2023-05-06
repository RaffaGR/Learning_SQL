-- Exemplo de como criar um banco
-- CREATE database Filmes;
CREATE database IF NOT EXISTS Filmes;

-- Escolho o banco para trabalhar
use filmes;

-- Exemplo de como criar uma Tabela(Table)

-- -> PRIMARY KEY único e obrigatório
-- not null (Não Vazio/item Obrigatório) 
-- Unique(Item único/Não se repete) 
-- Default(Se o campo estiver vazio ele preencherá automaticamente com o valor informado ao lado)

-- drop table IF EXISTS obras;
--update 
-- alter?


create table IF NOT EXISTS obras(
    id_obras int(11) PRIMARY KEY AUTO_INCREMENT,
    `file` varchar(255) not null,
    `name` varchar(255) unique,
    award varchar(255),
    `year_film` int(4) default 2000
);

INSERT INTO obras (`file`, `name`, award, `year_film`)
VALUES ("PROA", "Rafael", "Melhor Pessoa", 2023);

SELECT * FROM obras;