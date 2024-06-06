-- #####################
-- ### Examen BBDD # 1 ###
-- #####################
create database polideportivo;
create table jefe(
IDJefe int primary key auto_increment,
nombre varchar(25)
);
create table lugar(
IDLugar int primary key auto_increment,
nombre varchar(25),
direccion varchar(25),
cantComPoli int,
presupuesto double(10,2)
);
create table ComPoli(
IDComPoli int primary key auto_increment,
nombre varchar(25),
cantComDepo int,
foreign key (IDLugar) references lugar,
foreign key (IDJefe) references jefe
);
create table equipamiento(
IDEquipamiento int primary key auto_increment,
nombre varchar(25),
tipo varchar(25),
uso varchar(25),
foreign key (IDComPoli) references ComPoli 
);
create table comisario(
IDComisario int primary key auto_increment,
nombre varchar(25),
RolEvento boolean,
horario date,
foreign key (IDComPoli) references ComPoli
);
create table ComDepo(
IDComDepo int primary key auto_increment,
nombre varchar(25),
horario date,
tipo varchar(25),
foreign key (IDEquipamiento) references equipamiento,
foreign key (IDComPoli) references ComPoli
);
create table eventos(
IDEvento int primary key auto_increment,
nombre varchar(25),
FechaHora date,
duracion time,
CantInvitados int,
foreign key (IDComisario) references comisario,
foreign key (IDComDepo) references ComDepo
);
select * from ComDepo where IDEvento;
select * from eventos where IDComisario; 
-- Desarrollado por Robinson Mosquera Cubides