-- Junção de tabelas
Select *
From A, B
Where A.id_B = B.id;

Select *
From carro AS c, marca AS m
Where c.id_marca = m.id;

-- União 
Select atributo
from tabela_A
where a.data_nasciment between '2000-01-01' and '2000-12-31'
UNION
Select atributo
from tablea_B
where a.data_nasciment between '2000-01-01' and '2000-12-31';

Select atributo
from tablea_B
where a.data_nasciment between '2000-01-01' and '2000-12-31'
UNION ALL
Select atributo
from tabela_A
where a.data_nasciment between '2000-01-01' and '2000-12-31';


