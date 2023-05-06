
-- bit 0 e 1 
CREATE TABLE StatusAP (
 Cod INT PRIMARY KEY IDENTITY,
 Nome VARCHAR(40),
 Aposentado BIT NOT NULL
);

INSERT INTO StatusAP VALUES
('João', 1),
('Marta', 0),
('Renan', 0),
('Fábio', 0),
('Ana', 0),
('Amélia', 1);

SELECT Nome
FROM StatusAP
WHERE Aposentado = 1;
