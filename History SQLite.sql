--- 14-10-2021 10:35:02
--- SQLite
CREATE TABLE CURSO (CodigoDeCurso INT NOT NULL, Nombre varchar(125) NOT NULL, Descripcion varchar(255), Turno varchar(255) NOT NULL, PRIMARY KEY(CodigoDeCurso));

--- 14-10-2021 10:37:28
--- SQLite
ALTER TABLE CURSO ADD Cupo int;

--- 14-10-2021 10:38:27
--- SQLite
/***** ERROR ******
near "INSET": syntax error
 ----- 
INSET INTO CURSO VALUES(101,“Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35);
*****/

--- 14-10-2021 10:38:35
--- SQLite
/***** ERROR ******
near "y": syntax error
 ----- 
INSERT INTO CURSO VALUES(101,“Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35);
*****/

--- 14-10-2021 10:40:09
--- SQLite
/***** ERROR ******
near "y": syntax error
 ----- 
INSERT INTO CURSO VALUES(101,“Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35);
*****/

--- 14-10-2021 10:40:27
--- SQLite
INSERT INTO CURSO VALUES(101,"Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);

--- 14-10-2021 10:40:57
--- SQLite
INSERT INTO CURSO VALUES(102, "Matemática Discreta","","Tarde",30);

--- 14-10-2021 10:41:20
--- SQLite
/***** ERROR ******
NOT NULL constraint failed: CURSO.Nombre
 ----- 
INSERT INTO CURSO VALUES(104, NULL,"","Tarde",30);
*****/

--- 14-10-2021 10:41:37
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: CURSO.CodigoDeCurso
 ----- 
INSERT INTO CURSO VALUES(101, "Nombre","","Tarde",30);
*****/

--- 14-10-2021 10:43:01
--- SQLite
UPDATE CURSO SET "Cupo"=25;

--- 14-10-2021 10:43:57
--- SQLite
DELETE FROM CURSO WHERE "Nombre"="Algoritmos";

