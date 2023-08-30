# crear base de datos
create database db_universidad;
# usar base de datos
use db_universidad;
# borrar base de datos
drop database db_universidad;


#crear base de departamento
create table departamento(
	id_departamento int (10),
    nom varchar (50)
);


insert into departamento(id_departamento, nom) values (1, 'Jose');
insert into departamento(id_departamento, nom) values (2, 'Juan');
insert into departamento(id_departamento, nom) values (3, 'David');
insert into departamento(id_departamento, nom) values (4, 'Diego');
insert into departamento(id_departamento, nom) values (5, 'Stiven');




# crer tabla profesor
create table profesor(
	id_profesor int (10),
    nif varchar (9),
    nombre varchar (25),
    apellido1 varchar (50),
	apellido2 varchar (50),
    ciudad varchar (25),
    direccion varchar (50),
    telefono varchar (9),
    fecha_nacimiento date,
    sexo enum ('H', 'M'),
    id_departamento int (10)
);


insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (1, '567890234', 'Alvaro', 'Rodrigo', 'Perez', 'Armenia', 'Calle 23 #48', '345687142', '2005-01-12', 'H', 1);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (2, '876543210', 'Maria', 'Sanchez', 'Rojas', 'Guajira', 'Calle 33 #18', '324598761', '2002-05-14', 'M', 2);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (3, '789012456', 'Edwin', 'Rozo', 'Penagos', 'Calarca', 'Calle 10 #12', '349741359', '2000-01-06', 'H', 3);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (4, '678901345', 'Margreth', 'Palacio', 'Diaz', 'Salento', 'Calle 9 #45', '324764589', '2025-02-12', 'M', 4);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (5, '456789123', 'Milena', 'Castaño', 'Henao', 'Huila', 'Calle 21 #26', '376834973', '2004-12-12', 'M', 5);


# crear tabla asignatura
create table asignatura(
	id_asignatura int (10),
    nombre varchar (100),
    creditos float,
    tipo enum ('Básico', 'Avanzado', 'Especializado'),
    curso tinyint (3),
    cuatrimestre tinyint (3),
    id_profesor int (10),
    id_grado int (10)
);



insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (1, 'Intrduccion A La Programacion', 5.0, 'Avanzado', 1, 1, 1, 1);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (2, 'Matematicas Avanzadas', 5.0, 'Especializado', 2, 2, 2, 2);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (3, 'Manejo En JavaScript', 4.5, 'Basico', 3, 3, 3, 3);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (4, 'Pseudocodigo', 4.5, 'Basico', 4, 4, 4, 4);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (5, 'C++', 4.0, 'Avanzado', 5, 5, 5, 5);


# crear tabla grado
create table grado(
	id_grado int (10),
    nombre varchar (100)
);

insert into grado (id_grado, nombre) values (1, 'David');
insert into grado (id_grado, nombre) values (2, 'Adriana');
insert into grado (id_grado, nombre) values (3, 'Rodolfo');
insert into grado (id_grado, nombre) values (4, 'Mariana');
insert into grado (id_grado, nombre) values (5, 'Jonathan');





# crear tabla alumno_se_matricula_asignatura
create table alumno_se_matricula_asignatura(
	id_alumno int (10),
    id_asignatura int (10),
    id_curso_escolar int (10)
);


insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (1, 1, 1);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (2, 2, 2);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (3, 3, 3);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (4, 4, 4);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (5, 5, 5);


# crear tabla alumno
create table alumno(
	id_alumno int (10),
    nif varchar (9),
    nombre varchar (25),
    apellido1 varchar (50),
    apellido2 varchar (50),
    ciudad varchar (25),
    direccion varchar (25),
    telefono varchar (9),
    fecha_nacimiento date,
    sexo enum ('H', 'M') 
);


insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (1, '123456789', 'Jorge', 'Palacio', 'Rodriguez', 'Calarca', 'Calle principal 24', '326879415', '2024-05-15', 'H');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (2, '789012456', 'Juliana', 'Velazquez', 'Rojas', 'Armenia', 'Calle principal 32', '320456789', '2022-04-20', 'M');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (3, '456789123', 'Julieta', 'Villegas', 'Perez', 'Pereira', 'Calle principal 21', '378964583', '2018-04-10', 'M');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (4, '890123567', 'Diego', 'Sanchez', 'Lopez', 'Salento', 'Calle principal 10', '344578951', '2012-12-12', 'H');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (5, '234567890', 'Daniel', 'Steven', 'Ramirez', 'Pasto', 'Calle principal 25', '334587819', '2000-07-09', 'H');




# crear tabla curso_escolar
create table curso_escolar(
	id_curso_escolar int (10),
    anyo_inicio year (4),
    anyo_fin year (4)
);



insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (1,2022, 2023);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (2,2024, 2025);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (3,2025, 2026);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (4,2026, 2027);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (5,2027, 2028);


show databases;
show tables;


select * from departamento;
select * from curso_escolar;
select * from alumno;
select * from profesor;
select * from grado;
select * from asignatura;
select * from alumno_se_matricula_asignatura;