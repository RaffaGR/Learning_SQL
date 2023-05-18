drop database if exists `Biblioteca`;
create database `Biblioteca`;

use `Biblioteca`;

CREATE TABLE Livros (
    livros_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13)
);

INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, '9780316769488'),
('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169'),
('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');


CREATE TABLE Autores (
  autores_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255)
);

CREATE TABLE Editoras (
  editoras_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255)
);

-- palavras iguais não recebem ID, se tornam 1, ou seja, a segunda palavra some e quebra a ordem de ID, mas não iremos necessitar da mesma ordem xD
INSERT INTO Autores (nome)
SELECT DISTINCT autor
FROM Livros;

INSERT INTO Editoras (nome)
SELECT DISTINCT editora
FROM Livros;

ALTER TABLE Livros
ADD COLUMN autor_fk INT, ADD COLUMN editora_fk INT;

UPDATE Livros
SET autor_fk = (
    SELECT autores_id
    FROM Autores
    WHERE Autores.nome = Livros.autor
),
editora_fk = (
    SELECT editoras_id
    FROM Editoras
    WHERE Editoras.nome = Livros.editora
);

/*
UPDATE Livros
JOIN Autores ON Livros.autor = Autores.nome
SET Livros.autor_id = Autores.id;
*/

ALTER TABLE Livros 
drop column autor,
drop column editora;
-- Livros = livros_id(auto), titulo(var255), ano_publicacao(INT), isbn(var13), autor_fk(INT), editora_fk(INT)

/* -- correction this
INSERT INTO 
Livros (identificador, titulo, autor, editora, ano_publicacao, isbn, autor_id, editora_id) 
VALUES 
(7, 'Grande Sertão: Veredas', 'João Guimarães Rosa', 'Nova Fronteira', 1956, '978-85-209-2325-1', 1, 1),
(8, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Companhia das Letras', 1881, '9788535910663', 2, 2),
(9, 'Vidas Secas', 'Graciliano Ramos', 'Companhia Editora Nacional', 1938, '9788572326972', 3, 3),
(10, 'O Alienista', 'Machado de Assis', 'Martin Claret', 1882, '9788572327429', 2, 4),
(11, 'O Cortiço', 'Aluísio Azevedo', 'Penguin Companhia', 1890, '9788579027048', 4, 5),
(12, 'Dom Casmurro', 'Machado de Assis', 'Penguin Companhia', 1899, '9788583862093', 2, 5),
(13, 'Macunaíma', 'Mário de Andrade', 'Companhia Editora Nacional', 1928, '9788503012302', 6, 3); 
*/

INSERT INTO 
Autores (autores_id, nome)
VALUES 
(7, 'João Guimarães Rosa'),
(8, 'Machado de Assis'),
(9, 'Graciliano Ramos'),
(10, 'Machado de Assis'),
(11, 'Aluísio Azevedo'),
(12, 'Machado de Assis'),
(13, 'Mário de Andrade');

INSERT INTO 
Editoras (editoras_id, nome)
VALUES 
(7, 'Nova Fronteira'),
(8, 'Companhia das Letras'),
(9, 'Companhia Editora Nacional'),
(10, 'Martin Claret'),
(11, 'Penguin Companhia'),
(12, 'Penguin Companhia'),
(13, 'Companhia Editora Nacional');

INSERT INTO 
Livros (titulo, ano_publicacao, isbn, autor_fk, editora_fk) 
VALUES 
('Grande Sertão: Veredas', 1956, '9788520923251', 7, 7),
('Memórias Póstumas de Brás Cubas', 1881, '9788535910663', 8, 8),
('Vidas Secas', 1938, '9788572326972', 9, 9),
('O Alienista', 1882, '9788572327429', 10, 10),
('O Cortiço', 1890, '9788579027048', 11, 11),
('Dom Casmurro', 1899, '9788583862093', 12, 12),
('Macunaíma', 1928, '9788503012302', 13, 13);

-- select * from Editoras;