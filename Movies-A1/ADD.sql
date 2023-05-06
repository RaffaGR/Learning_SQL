use oscar;

-- Alter Table oscar ADD column Email varchar(255);
Alter Table oscar 
ADD Email varchar(255);

Alter Table oscar 
ADD exemplo varchar(255) default 1;
Alter Table oscar 
MODIFY column exemplo int;
-- Alter Table oscar MODIFY exemplo int;

-- 2 formas de fazer backup, Server > Data export