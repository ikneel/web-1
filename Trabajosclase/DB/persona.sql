DROP SCHEMA IF EXISTS 'fes_ico';

/*Creacion de la base de datos*/

CREATE SCHEMA IF NOT EXISTS 'fes_ico' DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;

USE 'fes_ico';

CREATE TABLE 'alumno'(
    'nombre_usuario'  text not null,
    'carrera' text not null,
    'no_cuenta' int (10) not null,
    'direccion' text not null,
    'telefono' varchar (12) not null,
    'email' text not null,
    'password' varchar (10) not null,
    'fecha_registro' datetime not null default current_timestamp,
    'permisos' int (11) not null default '1'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO 'alumno' ('nombre_usuario','carrera','no_cuenta','direccion','telefono', 'email','password','fecha_registro','permisos')values
('Luis Enrique Espitia Naves', 'ICO', '316267964','Sauces 303','5564596484' 'buigigame@gmial.com','123456','',''),
('Jose Maria','QFB','316267965','Nogal 205', '5585632548', 'josefmeng@gmail.com','654321','2021-02-28 14:46:03','2'),
('Maria jose', 'MC', '316267966', 'Fresnos 109', '5598648754', 'marijo@gmail.com', '123789', '2022-03-15 15:49:59','');

/*definir llave primaria*/

ALTER TABLE 'alumno'
    ADD PRIMARY KEY('no_cuenta')