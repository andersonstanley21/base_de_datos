create database hospital21 
use hospital21


create table entidad_pasiente21(
Numero_h_clinico int identity (1,1) primary key not null,
Numero_segurosocial varchar(50),
Nombre_de_pasientes varchar (50),
Apellido_de_pasiente varchar (50),
observaciones varchar (50),
id_genero int foreign key (id_genero) references genero (id_genero) not null,
ID_Telefono int foreign key (ID_Telefono) references Telefono (ID_Telefono) not null,
ID_Direccion int foreign key (ID_Direccion) references direccion (ID_Direccion) not null,
);

 
  

create table Entidad_ingresos (
id_ingreso int identity (1,1) primary key not null,
procedencia varchar (50 ) not null,
fecha_de_ingreso varchar (50),
observaciones varchar (50),
codigo_de_identificacion_medico int foreign key (codigo_de_identificacion_medico) references Entidad_Medicos1 (codigo_de_identificacion_medico) not null,
ID_Planta int foreign key (ID_Planta) references planta  (ID_Planta) not null,
); 


create table Entidad_Medicos(
codigo_de_identificacion_medico int identity ( 1,1)  primary key not null,
Nombre varchar (50),
Apellidos varchar (50),
Observaciiones varchar (50),
ID_especialidad int foreign key (ID_especialidad ) references especialidad (ID_especialidad) not null,
ID_Cargo int foreign key (ID_Cargo) references cargo (ID_Cargo) not null,
); 



create table genero (
id_genero int identity ( 1,1)  primary key not null,
genero varchar (50)
);

 
create table direccion(
ID_Direccion int identity ( 1,1)  primary key not null,
codigo_postal int not null,
domicilio varchar (50),
provicia varchar (50),
);


create table telefono( 
ID_Telefono int identity ( 1,1)  primary key not null,
Telefono int not null,
N_area int not null,
);

create table especialidad(
ID_especialidad int identity ( 1,1)  primary key not null,
especialidad varchar (50),
);

create table cargo(
ID_Cargo int identity ( 1,1)  primary key not null,
cargo varchar (50),
);

create table planta(
ID_Planta int identity ( 1,1)  primary key not null,
Nº_Cama int,
Nº_planta int,
);

insert into genero21 (genero) values('masculino')
insert into genero21(genero) values('femenino')
select *from genero21


insert into telefono(Telefono,N_area) values (503,12364150)
insert into telefono(Telefono,N_area) values (503,63060424)
insert into telefono(Telefono,N_area) values (503,57822301)
insert into telefono(Telefono,N_area) values (503,57822222)
insert into telefono(Telefono,N_area) values (503,17852828)
insert into telefono(Telefono,N_area) values (503,75278272)
insert into telefono(Telefono,N_area) values (503,52727278)
insert into telefono(Telefono,N_area) values (503,45245425)
insert into telefono(Telefono,N_area) values (503,42522052)
insert into telefono(Telefono,N_area) values (503,20733375)







insert into direccion(codigo_postal,Domicilio,provicia) values (398724884,'nueva concepcion','chlatenango')
insert into direccion(codigo_postal,Domicilio,provicia) values (394278884,'la sierpe','chalatenango')
insert into direccion(codigo_postal,Domicilio,provicia) values (394872588,'chalate','chalatenago')
insert into direccion(codigo_postal,Domicilio,provicia) values (397824884,'brizas','chalatenango')
insert into direccion(codigo_postal,Domicilio,provicia) values (394882272,'gramita','chalatenango')
insert into direccion(codigo_postal,Domicilio,provicia) values (392774884,'las uvas','chalatenango ')
insert into direccion(codigo_postal,Domicilio,provicia) values (394287288,'el aguacatillo','chalatenango')
insert into direccion(codigo_postal,Domicilio,provicia) values (397782828,'floresta','chalatenango')
insert into direccion(codigo_postal,Domicilio,provicia) values (392722274,'chalatenango','chalatenango')
insert into direccion(codigo_postal,Domicilio,provicia) values (390822284,'maraña','chalatenango')


insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'DANIEL','guardado','Ninguna',1,10,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'ander','gonzales','dolor de cabeza',2,9,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'jeyson','romero','nauseas',1,8,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'rene','urbina','dengue',2,7,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'antoniao','zolorzano','covid',2,6,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'alexander','selaya','fiebre',2,5,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'romeo','villalta','Ninguna',1,4,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'kevin','ramirez','alerjia',2,3,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'roberto','polo','Ninguna',1,2,10)
insert into entidad_pasiente21(Numero_segurosocial,Nombre_de_pasientes,Apellido_de_pasiente,Observaciones,id_genero,id_telefono,id_direccion)values (1, 'brayan','varela','quemaduras',1,1,10)


insert into cargo(cargo)values('Odontologo')
insert into cargo(cargo)values('enfermer@')
insert into cargo(cargo)values('rayos X')
insert into cargo(cargo)values('ginecologo')
insert into cargo(cargo)values('doctor')
insert into cargo(cargo)values('laboratorista')




insert into especialidad(especialidad) values ('Odontologo')
insert into especialidad(especialidad) values ('ginecologo')
insert into especialidad(especialidad) values ('laborotarista')
insert into especialidad(especialidad) values ('enfermera')
insert into especialidad(especialidad) values ('doctor')
insert into especialidad(especialidad) values ('cirujano')
insert into especialidad(especialidad) values ('consulta')


select*from especialidad


insert into Entidad_Medicos(Nombre,Apellidos,Observaciiones,ID_especialidad,ID_Cargo)values ('carlos','lopez','ninguna',1,1)
insert into Entidad_Medicos(Nombre,Apellidos,Observaciiones,ID_especialidad,ID_Cargo)values ('maria','gonzales','quemaduras',2,2)
insert into Entidad_Medicos(Nombre,Apellidos,Observaciiones,ID_especialidad,ID_Cargo)values ('angelica','urbina','dolor de cabeza',3,3)
insert into Entidad_Medicos(Nombre,Apellidos,Observaciiones,ID_especialidad,ID_Cargo)values ('marlon','guardado','nauseas',4,4)
insert into Entidad_Medicos(Nombre,Apellidos,Observaciiones,ID_especialidad,ID_Cargo)values ('kevin','zamora','covid19',5,5)
insert into Entidad_Medicos(Nombre,Apellidos,Observaciiones,ID_especialidad,ID_Cargo)values ('maria','ramirez','dengue',6,6)

select*from Entidad_Medicos



insert into planta(Nº_Cama ,Nº_planta ) values (1,1)
insert into planta(Nº_Cama ,Nº_planta ) values (2,2)
insert into planta(Nº_Cama ,Nº_planta ) values (3,3)
insert into planta(Nº_Cama ,Nº_planta ) values (4,4)
insert into planta(Nº_Cama ,Nº_planta ) values (5,5)
insert into planta(Nº_Cama ,Nº_planta ) values (6,6)
insert into planta(Nº_Cama ,Nº_planta ) values (7,7)
insert into planta(Nº_Cama ,Nº_planta ) values (8,8)
insert into planta(Nº_Cama ,Nº_planta ) values (9,9)
insert into planta(Nº_Cama ,Nº_planta ) values (10,10)

select*from planta

insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','30/02/2021','quemadura',4,1)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','5/09/2021','nauseas',3,2)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('sanmiguel',   '4/06/2021','diarrea',4,2)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','3/02/2021','covid_19',6,3)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','4/02/2021','migraña',6,4)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','5/02/2021','Fractura',6,4)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','12/02/2021','Fractura',2,6)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('sosonate',    '6/02/2021','picadura de serpiente',2,5)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','20/9/2021','alergia',2,1)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('san salvador','28/08/2021','Fractura',4,1)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','12/9/2021','Fractura',4,5)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('ususlutan',   '11/12/2021','herida profunda',5,4)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','10/02/2021','dolor de muela',5,9)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','17/02/2021','ojo lesionado',5,4)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('la paz',      '20/09/2021','Fractura',4,2)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','13/06/2021','erida infectada',4,6)
insert into  Entidad_ingresos (Procedencia,fecha_de_ingreso,Observaciones,codigo_de_identificacion_medico,ID_Planta )values ('Chalatenango','15/06/2021','Fractura',2,3)



select*from Entidad_ingresos










