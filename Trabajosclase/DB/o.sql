select trigger_name, event_manipulation, event_object_table, action_statement, trigger_schema
from information_schema.triggers
where trigger_schema = "colegio2459";

select * from cursos;

DELIMITER //
drop trigger if exists bi_curso //
create trigger bi_curso
before insert on cursos
for each row
begin
if(left(new.nombre, 5) <> "curso") then
set new.nombre = concat("curso", new.nombre);
end if;
set new.nombre = upper(new.nombre);
set new.abreviatura = upper(new.abreviatura);
end //
DELIMITER ;

insert into cursos values
('C100','escolar 2019-2020','ce 19-20','2019-07-31 00:00:00','2000-07-30 00:00:00'),
('C200','escolar 2020-2021','ce 20-21','2020-07-31 00:00:00','2000-07-30 00:00:00');

-- version 2
DELIMITER //
drop trigger if exists bi_curso //
create trigger bi_curso
before insert on cursos
for each row
begin
if(left(new.nombre,5) <> "curso") then
set new.nombre = concat("curso", new.nombre);
end if;
set new.nombre = upper(new.nombre);
set new.abreviatura = upper(new.abreviatura);

if(datediff(new.ffin, new.finicio) < 360) then 
signal sqlstate "45000"
set message_text = "Fecha final duera de rango";
end if;
end //
DELIMITER ;

select c.*, datediff(ffin,finicio) from cursos c;

insert into cursos values
('C300','escolar 2021-2022','ce 21-22','2021-07-31 00:00:00','2000-07-30 00:00:00'),
('C400','escolar 2022-2023','ce 22-23','2022-07-31 00:00:00','2000-07-30 00:00:00');

insert into cursos values
('C300','escolar 2021-2022','ce 21-22','2021-07-31 00:00:00','2022-07-30 00:00:00'),
('C400','escolar 2022-2023','ce 22-23','2022-07-31 00:00:00','2023-07-30 00:00:00');

drop table if exists bitacora;
create table bitacora(
	id int not null auto_increment primary key,
    fecha datetime not null,
    usuario varchar(50) not null,
    tabla varchar(50) not null,
    accion text null
);

select * from bitacora;


DELIMITER //
drop trigger if exists ad_curso //
create trigger ad_curso
after delete on cursos
for each row
begin
insert into bitacora values(null, sysdate(), user(), "cursos",
concat_ws("l", "Delete", old.id_curso, old.nombre, old.abreviatura, old.finicio, old.ffin));
end //
DELIMITER ;

select * from cursos;

delete from cursos where id_curso >= "C300";

DELIMITER //
drop trigger if exists bu_curso //
create trigger bu_curso
before update on cursos
for each row
begin
if(datediff(new.ffin, old.finicio) < 360) then 
set new.ffin = date_add(old.finicio, interval 1 year);
end if;
set new.nombre = upper(new.nombre);
set new.abreviatura = upper(new.abreviatura);
insert into bitacora values(null, sysdate(), user(), "cursos",
concat_ws("l", "Update", 
old.id_curso, old.nombre, old.abreviatura, old.finicio, old.ffin,
"=>",
new.id_curso, new.nombre, new.abreviatura, new.finicio, new.ffin));
end //
DELIMITER ;

select c.*, replace(abreviatura, "CE", "CI") from cursos c;

update cursos set ffin = "2001*07-30 00:00:00", 
abreviatura = replace(abreviatura, "CE", "CI"),
nombre = replace(nombre, "CURSO", "Ciclo")
where id_curso >= "C100";

select * from bitacora;
