/*Si la bases de datos existe eliminala*/
DROP SCHEMA IF EXISTS `fes_ico`;

/*Creación de la base de Datos*/

CREATE SCHEMA IF NOT EXISTS `fes_ico` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;

/*unsamos nuestra base de datos*/
USE `fes_ico`;

/*creacion de una tabla*/

CREATE TABLE `alumno`(
    `nombre_usuario` text not null,
    `carrera` text not null,
    `no_cuenta` int (10) not null,
    `direccion` text not null,
    `telefono`varchar (12) not null,
    `email` text not null,
    `password` varchar (8) not null,
    `fecha_registro` datetime not null default current_timestamp,
    `permisos` int (11) not null default '1'

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Agregar registros*/
INSERT INTO `alumno`(`nombre_usuario`, `carrera`, `no_cuenta`, `direccion`, `telefono`, `email`,`password`,'fecha_registro', 'permisos')values
('Luis Enrique Espitia Naves','ICO','316267964','Sauces 303','5594856325','buigigame@@gmial.com','123456','',''),
('Jose Maria', 'QFB','316267965','Nogal 205','5513515552','josep@gmail.com','654321','2021-03-28 15:59:59',''),
('Maria Jose','MC', '316267966', 'Fresnos 196', '5596321552','Marijo@gmail.com', '987654','','');


/*definir la llave primaria */

ALTER TABLE `alumno`
    ADD PRIMARY KEY (`no_cuenta`);