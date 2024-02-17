/*
Ejemplo de creación llaves primarias y secundarias.
*/

-- Se crea base de datos agenda

CREATE DATABASE agenda;

-- Se indica a la base de datos que se hara uso de la base de datos agenda

USE agenda;

-- Se crea una tabla llamada contactos

CREATE TABLE contactos (
-- Se crea llave primaria indicando que se hace uso de auto incrementable.
    id_contacto int not null primary key auto_increment,
    nombre_contacto varchar (250)  not null,
    correo_contacto varchar (250),
    domicilio_contacto varchar (250)
);
/*
 En la creación de la tabla telefonos se hara referencia a que contacto pertenece 
 permitiendo la relación de cardinalidad 0:M, un contacto tiene ninguno o muchos telefonos
*/
CREATE TABLE telefonos(
    telefono char(10)
);

/* se crea columna id_contacto la cual albergara nuestra llave foranea modificando la tabla 
    ( que vienen siendo los valores de la  llave primaria de la tabla contactos)*/
    
ALTER TABLE telefonos ADD COLUMN id_contacto int not null;
-- Se crea el constraint y llave foranea en la tabla telefonos
ALTER TABLE telefonos ADD CONSTRAINT fk_telefono_contacto foreign key(id_contacto) REFERENCES contactos(id_contacto);


-- Se poblan datos en nuestras tablas , en agenda si omite el valor para id_contacto, puesto que hace uso de AUTO INCREMENT
INSERT INTO `agenda`.`contactos`
(`nombre_contacto`,
`correo_contacto`,
`domicilio_contacto`)
VALUES
('carlos', 'carlitos@mail.comn', 'av.lopez mateos'),
('monica', 'mons@mail.comn', 'av.45 mts'),
('jessica', 'jesy_s@mail.comn', 'av.jardin'),
('jose', 'jos@mail.comn', 'av.san joaquin');

SELECT * FROM `agenda`.`contactos`;

-- Se agrega telefono a jessica
INSERT INTO `agenda`.`telefonos`
(`telefono`,
`id_contacto`)
VALUES
('5689125689',3),('5689120101',3);


-- Se agrega telefono a carlos
INSERT INTO `agenda`.`telefonos`
(`telefono`,
`id_contacto`)
VALUES
('5589125689',1),('5589120101',1),('5579120101',1);

-- Se agrega telefono a monica
INSERT INTO `agenda`.`telefonos`
(`telefono`,
`id_contacto`)
VALUES
('5589128889',2);


-- se realiza consulta  join

SELECT c.nombre_contacto, t.telefono FROM  contactos c join telefonos t ON c.id_contacto = t.id_contacto;
-- La anterior consulta devuelve aquellos contactos unicamcente tienen dado de alta telefono

-- Con el uso de Left join podemos traer los registros que tienen telefono y los que no (a jose)
SELECT c.nombre_contacto, t.telefono FROM  contactos c LEFT join telefonos t ON c.id_contacto = t.id_contacto;







	

