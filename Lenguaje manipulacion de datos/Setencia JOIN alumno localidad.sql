SELECT A.ID AS Matricula, A.NOMBRE, L.localidad 
FROM curso_intersemestral.alumnos AS A
JOIN curso_intersemestral.localidad AS L  
ON (A.id_localidad= L.id_localidad) 
WHERE NOMBRE LIKE 'Alan%'
ORDER BY localidad ASC;