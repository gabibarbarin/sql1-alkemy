--- 14-10-2021 15:09:12
--- SQLite
CREATE TABLE `profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `salario` int(11) NOT NULL,
  PRIMARY Key(id)
);

--- 14-10-2021 15:09:25
--- SQLite
INSERT INTO `profesor` (`id`, `nombre`, `apellido`, `fecha_de_nacimiento`, `salario`) VALUES
(1, 'Juan', 'Perez', '1990-06-06', 55000),
(2, 'Maria Emilia', 'Paz', '1984-07-15', 72000),
(3, 'Martin', 'Correa', '1987-12-07', 63000),
(4, 'Lucia', 'Diaz', '1991-02-24', 45000),
(5, 'Raul', 'Martinez', '1980-10-15', 85000),
(6, 'Mabel', 'Rios', '1982-06-12', 83000);

--- 14-10-2021 15:10:00
--- SQLite
SELECT nombre, apellido, fecha_de_nacimiento FROM profesor ORDER BY fecha_de_nacimiento;

--- 14-10-2021 15:12:47
--- SQLite
SELECT * FROM profesor WHERE salario >= 65000;

--- 14-10-2021 15:14:31
--- SQLite
SELECT * FROM profesor WHERE fecha_de_nacimiento BETWEEN 1980-01-01 AND 1989-12-31;

--- 14-10-2021 15:15:22
--- SQLite
SELECT * FROM profesor WHERE fecha_de_nacimiento BETWEEN '1980-01-01' AND '1989-12-31';

--- 14-10-2021 15:19:12
--- SQLite
SELECT * FROM profesor LIMIT(5);

--- 14-10-2021 15:21:01
--- SQLite
/***** ERROR ******
incomplete input
 ----- 
SELECT * FROM profesor WHERE nombre Like p%;
*****/

--- 14-10-2021 15:21:10
--- SQLite
SELECT * FROM profesor WHERE nombre Like 'p%';

--- 14-10-2021 15:21:34
--- SQLite
SELECT * FROM profesor WHERE nombre Like 'P%';

--- 14-10-2021 15:22:24
--- SQLite
SELECT * FROM profesor WHERE fecha_de_nacimiento BETWEEN '1980-01-01' AND '1989-12-31' AND salario > 80000;

