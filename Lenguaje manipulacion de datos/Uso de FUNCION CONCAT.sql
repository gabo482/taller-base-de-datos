
select  CONCAT ('Un saludo',' ', 'a los alumnos ', 'del URC') AS saludo;

SELECT CONCAT (A.ID,' ',A.NOMBRE) as ID_NOMBRE 
FROM curso_intersemestral.alumnos AS A
JOIN curso_intersemestral.localidad AS L  
ON (A.id_localidad= L.id_localidad) 
ORDER BY localidad ASC;


SELECT A.NOMBRE , L.localidad from curso_intersemestral.alumnos AS A , curso_intersemestral.localidad AS L 
WHERE A.id_localidad= L.id_localidad ;

