USE curso_intersemestral;


--  select now();

CREATE TABLE alumnos(
    ID CHAR (10) NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL
);/**/


CREATE TABLE cursos(
  curso char(6) not null primary key,
  tutor VARCHAR(100) NOT NULL
);


CREATE TABLE matriculas(
	fecha_matricula DATE 
);

ALTER TABLE matriculas ADD COLUMN ID CHAR (10) ;
ALTER TABLE  matriculas ADD CONSTRAINT FK_id_alumno FOREIGN KEY (ID) REFERENCES alumnos(ID); 

ALTER TABLE matriculas ADD COLUMN CURSO CHAR (6) ;
ALTER TABLE  matriculas ADD CONSTRAINT FK_CURSO FOREIGN KEY (CURSO) REFERENCES cursos(CURSO); 