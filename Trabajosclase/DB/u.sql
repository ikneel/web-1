create database convocatorrriaass;
use `convocatorrriaass`;


CREATE TABLE convocatoria(
	id_convocatoria INT(20) NOT NULL auto_increment,
	plataforma VARCHAR(50) NOT NULL,
	fecha_publicacion datetime NOT NULL,
	n_convocatoria VARCHAR(50) NOT NULL,
    dirección_Web VARCHAR(50) NOT NULL,
	fecha_limite datetime NOT NULL,
    id_organismo INT(20) NOT NULL,
    id_solicitud int,
    id_dic_convocatoria int(20),
    id_departamento int,
    PRIMARY KEY(id_convocatoria)	
);


insert into convocatoria values
(null, 'MEET', '12-03-21 - 11:59:00', 'De Inversión', 'www.Webside.com', '31-07-21 - 11:59:00',1,1,1,1),
(null, 'ZOOM', '13-07-21 - 11:59:00', 'Ambientales', 'www.Portum.com', '03-08-21 - 11:59:00',2,2,2,2),
(null, 'SKYPE', '06-08-21 - 11:59:00', 'Pronafim', 'www.Webhos.com', '08-10-21 - 11:59:00',3,3,3,3),
(null, 'YOUTUBE', '03-09-21 - 11:59:00', 'Sociales', 'www.faceshap.com', '20-09-21 - 11:59:00',4,4,4,4),
(null, 'MEET', '20-09-21 - 11:59:00', 'Proyectos Industriales', 'www.Wattsap.com', '13-10-21 - 11:59:00',5,5,5,5),
(null, 'TWITTCH', '04-08-21 - 11:59:00', 'Natación', 'www.tiwttch.com', '20-08-21 - 11:59:00',6,6,6,6),
(null, 'ZOOM', '02-09-21 - 11:59:00 - 11:59:00', 'Deportes', 'www.Wside.com', '12-09-21 - 11:59:00',7,7,7,7),
(null, 'SKYPE', '20-09-21 - 11:59:00', 'Examen De Admisión', 'www.Wside.com', '06-11-21 - 11:59:00',8,8,8,8),
(null, 'MEET', '05-11-21 - 11:59:00', 'Canto', 'www.Webse.com', '27-11-21 - 11:59:00',9,9,9,9),
(null, 'MEET', '07-10-21 - 11:59:00', 'Baile', 'www.Wide.com', '25-10-21 - 11:59:00',10,10,10,10),
(null, 'YOUTUBE', '18-07-21 - 11:59:00', 'Cursos', 'www.Weeeee.com', '18-09-21 - 11:59:00',11,11,11,11),
(null, 'ZOOM', '16-12-21 - 11:59:00', 'Lectura', 'www.Wasap.com', '25-12-21 - 11:59:00',12,12,12,12),
(null, 'ZOOM', '17-12-21 - 11:59:00', 'Automotriz', 'www.Wepe.com', '07-01-22 - 11:59:00',13,13,13,13),
(null, 'SKYPE', '08-08-21 - 11:59:00', 'Pintura', 'www.bside.com', '11-08-21 - 11:59:00',14,14,14,14),
(null, 'MEET', '06-08-21 - 11:59:00', 'Ingles', 'www.We.com', '23-09-21 - 11:59:00',15,15,15,15);

select * from convocatoria;


drop table if exists Dic_convocatoria;
CREATE TABLE Dic_convocatoria(
    id_dic_convocatoria int(20) auto_increment primary key,
	fecha_resolucion date NOT NULL,
	resultados_s VARCHAR(9) NOT NULL,
	pagina_wed VARCHAR(50) NOT NULL,
	comentarios VARCHAR(500),
	fecha_de_resolucion date 
);
INSERT INTO dic_convocatoria values 
( null,'2021-07-05 00:00:00', 'Aprobado', 'www.Webside.com', 'Muy interesante', '2021-06-05 00:00:00'),
( null,'2021-02-05 00:00:00', 'Reprobado', 'www.Portum.com', 'Aburrido', '2021-02-06 00:00:00'),
( null,'2021-08-05 00:00:00', 'Reprobado', 'www.Webhos.com', 'Muy interesante', '2021-07-05 00:00:00'),
( null,'2021-09-05 00:00:00', 'Aprobado', 'www.faceshap.com', 'Muy interesante', '2021-08-05 00:00:00'),
( null,'2021-10-05 00:00:00', 'Reprobado', 'www.Wattsap.com', 'Aburrido', '2021-09-05 00:00:00'),
( null,'2021-11-05 00:00:00', 'Aprobado', 'www.tiwttch.com', 'Muy interesante', '2021-10-05 00:00:00'),
( null,'2021-10-05 00:00:00', 'Reprobado', 'www.Wede.com', 'Na', '2021-12-05 00:00:00'),
( null,'2021-12-05 00:00:00', 'Aprobado', 'www.Wside.com', 'Aburrido', '2021-10-05 00:00:00'),
( null,'2021-11-05 00:00:00', 'Aprobado', 'www.Webse.com', 'Muy interesante', '2021-02-05 00:00:00'),
( null,'2021-02-05 00:00:00', 'Aprobado', 'www.Wide.com', 'Muy interesante', '2021-01-05 00:00:00'),
( null,'2021-08-05 00:00:00', 'Aprobado', 'www.Weeeee.com', 'Aburrido', '2021-09-05 00:00:00'),
( null,'2021-07-05 00:00:00', 'Reprobado', 'www.Wasap.com', 'Muy interesante', '2021-07-05 00:00:00'),
( null,'2021-09-05 00:00:00', 'Aprobado', 'www.Wepe.com', 'Muy interesante', '2021-08-05 00:00:00'),
( null,'2021-05-05 00:00:00', 'Reprobado', 'www.bside.com', 'Aburrido', '2021-06-05 00:00:00'),
( null,'2021-10-05 00:00:00', 'Reprobado', 'www.We.com', 'Muy interesante', '2021-04-05 00:00:00'),
( null,'2021-11-05 00:00:00', 'Aprobado', 'www.Wbsde.com', 'Muy interesante', '2021-08-05 00:00:00')
;

select * from dic_convocatoria;

drop table if exists organismo;
CREATE TABLE organismo(
    id_Organismo INT auto_increment,
    nombre VARCHAR(50) NOT NULL,
	dirección VARCHAR(100) NOT NULL,
	ciudad VARCHAR(50) NOT NULL,
	codigo_Postal int NOT NULL,
	teléfono INT(10), 
	email VARCHAR(50) NOT NULL,
    id_estado int,
    PRIMARY KEY(id_organismo)	
);
insert into organismo values
(null, 'Santa Gutieritos Fatima ', 'Batalla de Naco, Col. Álvaro Obregón.', 'CDMX', 12345, 16430093, 'patito23@gmail.com', 30),
(null, 'Alan Yakitori ', 'Balcón de los Edecanes, Ampliación Lomas de SanLorenzo', 'Monterrey', 54321, 16435593, 'otravez23@gmail.com',   20),
(null, 'Robles Bolaños Roberto', 'Mar de la Crisis, Col. Ojo de Agua', 'Titicaca', 15243, 16432293, 'tlayudas@gmail.com', 15),
(null, 'Gillermo Hidalgo Teresa', 'BDiablotitla, Santa Catarina Yecahuizotl', 'V.deChalco', 98765, 16431193, 'esquites@gmail.com',  25),
(null, 'Calyeca Morales', 'Matapulgas, Col. Tlalpuente', 'Nosedonde', 15345, 16433393, 'pipian@gmail.com', 24),
(null, 'Flores Zacarias Amapola', 'DelTaxi, Unidad habitacional Sitio 271', 'Benito', 54981, 16431145, 'flores_A@gmail.com', 16),
(null, 'Soliz Colima Calolina', 'Añejo de Bacardí,Ciudad Alegre', 'Chimalhuacan', 34781, 16435523, 'solizC.C@gmail.com', 18),
(null, 'CONACYT', 'Francos 21 col. Héroes De Cerro Prieto', 'CDMX', '07850', '55125086', 'cona.cyt@gmail.com', 4),
(null, 'CENART', 'AV. Churubusco 16 Col. Churubusco', 'CDMX', '078506', '55575698', 'cenart.inst@gmail.com', 4),
(null, 'CONADE', 'Militar Erick 20 col. Juarez', 'CDMX', '074502', '55869015', 'conade.20@gmail.cojm', 4),
(null, 'FCAE', 'Rubio Sanchez 50 col. Cerro Grande', 'COLIMA', '08065', '58758639', 'fcae.50@gmail.com', 6),
(null, 'FIROTUR', 'AV. Sol NUeve 1 Col. Zona Centro', 'NAYARIT', '608354', '56981240', 'firotur.centro@gmail.com', 11),
(null, 'ULSA', 'Bicenentario 86 Col. Centenario', 'CDMX', '089605', '55268930', 'ulsa.salle@gmail.com', 4),
(null, 'CEMBREX', 'Malinche 50 col. Gertrudiz Sanchez', 'CDMX', '076352', '57510720', 'cembrex.mx@gmail.com', 4),
(null, 'TECMONT', 'Delfin 65 Col. Cerro Silla', 'MONTERREY', '906514', '774526421', 'tecmont.mont@gmail.com', 20);

select* from organismo;



CREATE TABLE informe_asignacion(
	
	id_informe_asignacion int(50) not null auto_increment primary key,
	no_solicitud int(20) not null,
	fecha_presentacion date not null,
	titulo_proyecto varchar(50) not null,
	investigador_principal varchar(50) not null,
	id_convocatoria int,
    id_organismo int,
    id_programa int(20)
    
);
insert into informe_asignacion values
(null, 1, '2021-11-23', 'ECONOMIA A EMPRESAS', 'LOPEZ HERNANDEZ BRAYAN', 1, 1, 1),
(null, 1, '2021-11-24', 'AGRICULTURA Y MEDIO AMBIENTE', 'CRUZ HERNANDEZ JUAN', 1, 1, 1),
(null, 1, '2021-11-25', 'CESC', 'MARTINEZ JORGE', 1, 1, 1),
(null, 1, '2021-11-26', 'EDUCACION FISICA', 'MAYRA GUITERREZ', 1, 1, 1),
(null, 1, '2021-11-23', 'SECRETARIA CULTURAL', 'REYNA ARMANDO', 1, 1, 1),
(null, 1, '2021-11-24', 'UIDE', 'PINEDA LESLIE CECILIA', 1, 1, 1),
(null, 1, '2021-11-25', 'FOMENTO A LA LECTURA', 'ROSAS ROSALES ANGELES', 1, 1, 1),
(null, 1, '2021-11-26', 'PINTORESCAS', 'KARLA MEJIA', 1, 1, 1);

select* from informe_asignacion;

drop table if exists solicitud;
CREATE TABLE solicitud(
    id_solicitud int(10) not null auto_increment primary key,
	importe_economico int(20) not null,
	horas_por_semana int(3) not null,
    id_resolucion int,
    id_grupo_de_investigacion int    
);
insert into solicitud values
(null,22000 , 6, '1', '1'), (null,20000, 8, '2', '2'), (null,20520, 18, '3', '3'), (null,15261, 9, '4', '4'), (null,22231, 8, '5', '2'),
(null,22300, 12, '6', '5'), (null,10000, 9, '7', '3'), (null,20620, 12, '8', '5'), (null,19251, 9, '9', '4'), (null,32856, 8, '10', '2'),
(null,23450, 10, '11', '1'), (null,30000, 9, '12', '1'), (null,22125, 1, '13', '3'), (null,35212, 9, '14', '4'), (null,26521, 12, '15', '5');

select * from solicitud;


CREATE TABLE programa(
    id_programa int(20) not null auto_increment primary key,
	fecha_Inicio DATE NOT NULL,
    fecha_Final DATE NOT NULL,
    duracion VARCHAR(50) NOT NULL,
    etapas VARCHAR(50) NOT NULL,
    id_informe_asignacion int(20)
);

insert into programa values
(null, '2021-10-22', '2021-11-22', '1 mes', '2 etapas', 1),
(null, '2021-9-25', '2021-11-25', '2 meses', '4 etapas', 2),
(null, '2020-01-15', '2020-03-15', '3 meses','3 Etapas', 3),
(null, '2021-06-16', '2021-11-16', '5 meses','4 Etapas', 4),
(null, '21-10-30', '21,11,15', '16 días', '2 etapas', 5),
(null, '21-11-15', '22,01,15', '2 meses', '3 etapas', 6),
(null, '2021-06-05', '2021-09-05', '3 Meses', '5 Etapas','7'),
(null, '2021-02-15', '2021-06-25', '4 Meses', '2 Etapas','8');

select * from programa;
drop table if exists departamento_grupo;
create table departamento_grupo(
    id_departamento_grupo int(20) not null auto_increment primary key,
    nombre varchar(50) not null,
    id_grupo_de_investigacion int(20)
);

insert into departamento_grupo values
(null, "Grupo maravilla", 1),(null, "equipo dinamita", 1),(null, "BTS", 1),
(null, "Los criko", 1),(null, "teletub", 1);


select * from departamento_grupo;

drop table if exists grupo_investigacion;
CREATE TABLE grupo_investigacion(
    id_grupo_de_investigacion int(20) auto_increment primary key,
	responsable VARCHAR(50) NOT NULL,
    nombre_proyecto VARCHAR(50) NOT NULL,
    id_investigadores varchar(20) NOT NULL   
	
);
insert into grupo_investigacion values
(null,'LOPEZ HERNANDEZ BRAYAN', 'ECONOMAI A EMPRESAS', "1, 5, 6, 4,8,9"),
(null,'CRUZ HERNANDEZ JUAN', 'AGRICULTURA Y MEDIO AMBIENTE', "2,6,7,6,8,6"),
(null,'MARTINEZ JORGE', 'CESC', "10, 25,26,4,1"),
(null,'MAYRA GUTIERREZ', 'EDUCACION FISICA', "11,6,7,8,9,10"),
(null,'REYNA ARMANDO', 'SECERTARIA CULTURAL', "16,8,20,10,2,5");

select * from grupo_investigacion;

drop table if exists investigador;
CREATE TABLE investigador(
    id_Investigador INT(20) auto_increment primary key,
    nombre VARCHAR(50) NOT NULL,
    ap_paterno varchar(50) not null,
    ap_materno varchar(50), 
	grado_academico  VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
    id_Departamento varchar(20),
    id_Area INT(20) NOT NULL,
    id_estado int
);
desc investigador;

insert into investigador values
(null,'BRAYAN', 'HERNANDEZ', 'LOPEZ','LICENCIATURA', 'BRAYANloPeZ@gmail.com','', 3, 5 ),
(null,'URIEL', 'MONTOYA', '','LICENCIATURA', 'UriMon@gmail.com', '',2, 5),
(null,'MARIEL MONSERRAT', 'GARCIA', '','LICENCIATURA', 'MMgarcia@gmail.com','',1,6 ),
(null,'JOCELYN',  'VALDEZ', '','LICENCIATURA', 'JossValdez@gmail.com','',3,10),
(null,'CECILIA','CHAVEZ', 'MEJIA', 'LICENCIATURA', 'CCmejia@gmail.com','', 2, 32),
(null,'VICTORIA', 'LOPEZ', 'ALVARO','LICENCIATURA', 'vikyLopez@gmail.com','', 3, 6),
(null,'JUAN', 'CRUZ', 'HERNANDEZ','LICENCIATURA', 'JuanCruz1998@gmail.com', '',4, 12),
(null,'JAVIER RAYMUNDO', 'MENDOZA', '', 'MAESTRIA', 'JRayMendoza@gmail.com','',3, 21),
(null,'HUGO',  'HERNANDEZ', 'SANCHEZ','MAESTRIA', 'hugo_Sanchez@gmail.com','',2, 25),
(null,'JORGE', 'MARINEZ', '','MAESTRIA', 'Ma_Jorge@gmail.com','',3,4 ),
(null,'MAYRA', 'GUTIERREZ', '' ,'SECUDNARIA', 'May_gutierrez@gmail.com','',3,26),
(null,'ISABEL','GOMEZ', '', 'SECUNDARIA', 'chabela_gomez@gmail.com','',2,32), 
(null,'MARIA FERNANDA', 'ESTRADA', '','SECUNDARIA', 'MaFer_estrada@gmail.com','',4,17 ),
(null,'JUAN','CASTELLANOS', '', 'SIN GRADO', 'Juan_C1997@gmail.com', '',1, 19),
(null,'SAUL',  'DOMINGUEZ', '','SIN GRADO', 'SaulDomignuez14@gmail.com','',2, 23),
(null,'ARMANDO',  'REYNA', '','SIN GRADO', 'Mando_reyna@gmail.com', '', 1,5),
(null,'MARIBEL', 'CRUZ', 'PEÑA', 'LICENCIATURA', 'mARY_peña@gmail.com', '', 3, 8),
(null,'LESLIE CECILIA', 'PINEDA', '', 'LICENCIATURA', 'lilis_pineda@gmail.com', '', 1,7),
(null,'ROBERTO CARLOS', 'CAMACHO', '', 'LICENCIATURA', 'CaCa_roberto@gmail.com', '', 2,15),
(null, 'NORMA', 'REYES', 'OTEO', 'PREPARATORIA', 'normiOtteo@gmail.com', '', 2,9),
(null, 'ANGELES', 'ROSAS', 'ROSALES', 'PREPARATORIA', 'Angie_ros@gmail.com', '', 1,12),
(null, 'OSVALDO', 'CRUZ', 'FIGUEROA', 'PREPARATORIA', 'OswaldoCruz@gmail.com', '', 1,25),
(null, 'OSCAR', 'CHAVEZ', 'CHAVEZ', 'SIN GRADO', 'Chavez_oscar@gmail.com', '', 4,16),
(null, 'MARLON MISAEL', 'MARTINEZ', '', 'SIN GRADO', 'MaMaMisael@gmail.com', '', 4,27),
(null, 'KARLA', 'MEJIA', '', 'SIN GRADO', 'KarlitaM@gmail.com', '', 2,13),
(null, 'ERNESTO', 'LOPEZ', '', 'SIN GRADO', 'ERNLopez@gmail.com', '', 3,16),
(null, 'BRANDON', 'GUTIERREZ', '', 'SIN GRADO', 'Brandongutierritos@gmail.com', '', 3,18),
(null, 'VIANEY', 'ESTRADA', '', 'SIN GRADO', 'vianEst@gmail.com', '', 2,2),
(null, 'HANNY', 'LOPEZ', '', 'SIN GRADO', 'HANlop@gmail.com', '', 1,3),
(null, 'OSCAR', 'DE LA ROSA', '', 'SIN GRADO', 'OscarinROsa@gmail.com', '', 4,30),
(null, 'Luis', 'T-REX', '', 'SIN GRADO', 'LT_REX@gmail.com', '', 2,12);

    
    
select * from investigador;

drop table if exists departamento;
CREATE TABLE departamento(
	id_departamento INT NOT NULL auto_increment primary key ,
    director VARCHAR (50) NOT NULL,
    ubicacion VARCHAR(50) NOT NULL, 
    num_alumnos_atencion INT NOT NULL,
    id_area INT NOT NULL,
    id_solicitud int(20),
    id_grupo_de_investigador int
);
insert into departamento values
(null, 'Castañeda Octavio Antonio', 'FES Aragon', 50,1,1,1),
(null, 'Morales Uribe Mario', 'FES Zaragoza', 40,2,2,1),
(null, 'Reyes Calle Ana', 'UVM', 35,3,3,1),
(null, 'Mora Alvardo Juan', 'Univercidad Napolitana', 55,4,4,2),
(null, 'Lechuga Martinez Karen', 'Univerdidad Castilla', 20,1,5,2),
(null, 'Perez Allende Sofia', 'Univercidad Hispana',36,2,6,2),
(null, 'Montalvo Ramos Kevin', 'IPN', 40,3,7,3),
(null, 'Borrego Mata Maria', 'Univercidad Chabacana', 30,4,8,3),
(null, 'Moreno Ortega Karina', 'Univercidad AB', 62,1,9,3),
(null, 'Ollo Montalvo Elias', 'Univercidad CIA', 44,2,10,4),
(null, 'Pineda Casco Valentina', 'Univercidad vainilla', 38,3,11,4),
(null, 'Garcia Agila Oscar', 'Univercidad Patito', 40,4,12,4),
(null, 'Zarate Gomez Jose', 'Univercidad XD', 47,1,13,5),
(null, 'Goma Uribe Mario', 'Univercidad ESC', 55,2,14,5),
(null, 'Zinzun Roma Xochil', 'Univercidad ETC',62,3,15,5);

select * from departamento;
drop table if exists resolucion;
create table resolucion(
    id_resolucion int not null auto_increment primary key,
    fecha_resolucion date not null,
    estatus varchar(50)
);
insert into resolucion values
(null,'2021-07-05 00:00:00', 'aprobado'),
(null,'2021-02-05 00:00:00', 'rechazado'),
(null,'2021-08-05 00:00:00', 'rechazado'),
(null,'2021-09-05 00:00:00', 'aprobado'),
(null,'2021-10-05 00:00:00', 'rechazado'),
(null,'2021-11-05 00:00:00', 'aprobado'),
(null,'2021-10-05 00:00:00', 'rechazado'),
(null,'2021-12-05 00:00:00', 'aprobado'),
(null,'2021-11-05 00:00:00', 'aprobado'),
(null,'2021-02-05 00:00:00', 'aprobado'),
(null,'2021-08-05 00:00:00', 'aprobado'),
(null,'2021-07-05 00:00:00', 'rechazado'),
(null,'2021-09-05 00:00:00', 'aprobado'),
(null,'2021-05-05 00:00:00', 'rechazado'),
(null,'2021-10-05 00:00:00', 'rechazado');

select* from resolucion;
    
drop table if exists area;
CREATE TABLE area(
id_area int  primary key auto_increment ,
nombre varchar(50)
);
insert into area values
(null, 'Fisico-Matematicas'),(null, 'Quimica-Biologuia'),(null, 'Humanidades'),(null, 'Artes');

select * from area;

drop table if exists estados;
create table estados(
	id_estados INT NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR (20) NOT NULL
);
insert into estados values
(null, 'Aguascalientes'),(null, 'Baja California'),(null, 'Baja California Sur'),(null, 'Campeche'),(null, 'Coahuila'),(null, 'Colima'),(null, 'Chiapas'),(null, 'Chihuahua'),(null, 'Durango'),(null, 'Distrito Federal'),(null, 'Guanajuato'),(null, 'Guerrero'),(null, 'Hidalgo'),(null, 'Jalisco'),(null, 'México'),(null, 'Michoacán'),(null, 'Morelos'),(null, 'Nayarit'),(null, 'Nuevo León'),(null, 'Oaxaca'),(null, 'Puebla'),(null, 'Querétaro'),(null, 'Quintana Roo'),(null, 'San Luis Potosí'),(null, 'Sinaloa'),(null, 'Sonora'),(null, 'Tabasco'),(null, 'Tamaulipas'),(null, 'Tlaxcala'),(null, 'Veracruz'),(null, 'Yucatán'),(null, 'Zacatecas');

select * from estados;















