/*Reglas del sistema Ejemplo para NULL

CREATE TABLE libros(
titulo VARCHAR(30) NOT NULL ,
autor VARCHAR(30)NOT NULL ,
editorial VARCHAR(30)NOT NULL ,
precio NUMBER(6,2)
);
*/
--Idea de una consulta con NULL valido
INSERT INTO libros VALUES('El alfa', 'Bogado', '2 pesos', NULL);
--No se permite valor null
INSERT INTO libros VALUES('El alfa', 'Bogado', NULL, NULL);
--Otro Ejemplo
INSERT INTO libros VALUES('Lengua 3', 'Brigada', 'Santillna', 3000.00);

--Leer tabla 
SELECT * FROM libros;