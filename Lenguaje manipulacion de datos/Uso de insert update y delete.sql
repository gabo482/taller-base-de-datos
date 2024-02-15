
-- Insertar nuevo registro tabla alumnos
INSERT INTO `curso_intersemestral`.`alumnos`(`ID`,`NOMBRE`)
VALUES ('123451111A','Jose Alberto');

-- Actualizar registro tabla alumnos
UPDATE alumnos
SET `NOMBRE` = 'José Francisco'
WHERE `ID` = '123451111A';

-- Insertar nuevos registros  de tabla alumnos
INSERT INTO `curso_intersemestral`.`alumnos`(`ID`,`NOMBRE`)
VALUES ('223451111A','Julio'), ('323451111A','Diana');

INSERT INTO `curso_intersemestral`.`alumnos`(`ID`,`NOMBRE`)
VALUES ('423451111A','Alan'), ('523451111A','Alan Javier');

-- borrar registro  de tabla alumnos
DELETE FROM `curso_intersemestral`.`alumnos` WHERE ID ='123451111A';

-- Actualizacion de localidad

UPDATE alumnos set id_localidad =3 where id IN ('423451111A','523451111A');

-- Modificacion de columna en tabla alumnos
ALTER TABLE alumnos modify id_localidad int not null;


