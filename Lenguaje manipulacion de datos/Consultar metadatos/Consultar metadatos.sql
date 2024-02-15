/*
* Esta consulta devolverá información sobre todas las tablas en la base de datos actual, incluyendo el nombre de la tabla,
* el tipo de tabla (BASE TABLE, VIEW, etc.), el motor de almacenamiento, etc.
*/

SELECT *
FROM information_schema.tables;

/*
Esta consulta devolverá información sobre las columnas que forman parte de la clave primaria de la tabla especificada.
*/

SELECT *
FROM information_schema.key_column_usage
WHERE table_name = 'nombre_de_la_tabla'
AND constraint_name = 'PRIMARY';

/*
Esta consulta devolverá información sobre las claves foráneas que hacen referencia a la tabla especificada.
*/

SELECT *
FROM information_schema.referential_constraints
WHERE table_name = 'nombre_de_la_tabla';


/*
Esta consulta devolverá información sobre todas las columnas de la tabla especificada, incluyendo el nombre de la columna, el tipo de datos, la longitud máxima, si es nula o no, etc.
*/
SELECT *
FROM information_schema.columns
WHERE table_name = 'actor';

/*
Esta consulta devolverá información sobre los índices que se han creado en la tabla especificada
*/
SELECT *
FROM information_schema.statistics
WHERE table_name = 'nombre_de_la_tabla';

