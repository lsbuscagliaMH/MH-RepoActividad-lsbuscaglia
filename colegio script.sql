
-- **CREACIÓN DE TABLAS**
CREATE TABLE 'alumnos' (
	'id_alumno' int(11) NOT NULL,
	'nombre_alumno' varchar(50) NOT NULL,
	'telefono_alumno' int(12) NOT NULL,
	PRIMARY KEY ('id_alumno')
)

CREATE TABLE 'materias' (
	'id_materia' int(11) NOT NULL,
	'nombre_materia' varchar(25) NOT NULL,
	PRIMARY KEY ('id_materia')
)

CREATE TABLE 'clases' (
	'id_clase' int(11) NOT NULL,
	'nombre_clase' varchar(10) NOT NULL,
	PRIMARY KEY ('id_materia')
)

CREATE TABLE 'notas'(
	'id_nota' int(11) NOT NULL,
	'id_alumno' int(11) NOT NULL,
	'id_materia' int(11) NOT NULL,
	'id_clase' int(11) NOT NULL,
	'nota' int(2) NOT NULL,
	PRIMARY KEY ('id_nota'),
	FOREIGN KEY ('id_alumno') REFERENCES 'alumnos'('id_alumno'),
	FOREIGN KEY ('id_materia') REFERENCES 'materias'('id_materia')
	FOREIGN KEY ('id_clase') REFERENCES 'clases'('id_clase')
)
--END



-- *** CARGA DE DATOS EN SISTEMA ***

-- ** CARGA DE MATERIAS **
INSERT INTO materias VALUES (1,'Practicas de Lenguaje'),
(2,'Matemáticas'),
(3,'Ciencias Naturales'),
(4,'Ciencias Sociales'),
(5,'Construcción de la Ciudadanía'),
(6,'Orientación Vocacional'),
(7,'Inglés'),
(8,'Filosofía'),
(9,'Artísticas');


-- ** CARGA DE CLASES **
INSERT INTO clases VALUES 
(1, 'CLASE A'),
(2, 'CLASE B'),
(3, 'CLASE C')
--END


-- *** CARGA DATOS DE USERS ***

--**CARGA DE ALUMNOS**
INSERT INTO alumnos VALUES 
(1,'Arturo Gimenez', 54202020202020),
(2,'Jodi Sánchez', 54202020202020),
(3,'Juan Artigas', 54202020202020),
(4,'Dalmira Castro', 54202020202020),
(5,'Leandro Ariel Enrique', 54202020202020),
(6,'Julieta Bonaiuto de Ana', 54202020202020),
(7,'Gonzalo Barranus', 541120402011),
(8,'Marianela Gamarra', 54112920112),
(9,'Luciano Buscaglia', 541159412045);
--END

--**CARGA DE NOTAS**
INSERT INTO notas VALUES 
(1,1,1,1,8),
(2,1,2,2,9),
(3,2,1,1,4),
(4,4,3,3,10)
--END


--**Consulta Maestros**
SELECT n.id_nota, a.nombre_alumno, m.nombre_materia, c.nombre_clase, n.nota FROM notas n
JOIN alumnos a ON n.id_alumno = a.id_alumno
JOIN materias m ON n.id_materia = m.id_materia
JOIN clases c ON n.id_clase = c.id_clase
--END
*/
