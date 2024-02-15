
/*
Ejemplo de consulta con el uso de producto cartesiano, siempre se recomienda realizar uso de JOIN,
sin embargo se ejemplifica que se puede llegar a encontar este tipo de consultas sin el uso de JOIN
*/

SELECT A.NOMBRE , L.localidad from curso_intersemestral.alumnos AS A , curso_intersemestral.localidad AS L 
WHERE A.id_localidad= L.id_localidad ;

