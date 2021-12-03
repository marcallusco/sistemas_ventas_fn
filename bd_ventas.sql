CREATE DATABASE bd_ventas;
use bd_ventas;

create table productos(
id int(11) primary key auto_increment,
nombre varchar(30),
descripcion text,
precio float);

create table clientes(
id int(11) primary key auto_increment,
ci varchar(10),
nombre varchar(30),
apellido varchar(30),
correo varchar(30),
direccion varchar(50),
celular varchar(30));

create table ventas(
id int(11) primary key auto_increment,
producto_id int(11),
cliente_id int(11),
fecha date,
foreign key(producto_id)references productos(id),
foreign key(cliente_id)references clientes(id));

create table usuarios(
id int(11) primary key auto_increment,
email varchar(50),
password varchar(50));

create table empleados(
id int(11) primary key auto_increment,
ci varchar(15),
nombres varchar(30),
apellidos varchar(30),
celular varchar(8));

insert into empleados(ci,nombres,apellidos,celular)values('12990278','David Hector','Canaza Mayta','63218482');
insert into empleados(ci,nombres,apellidos,celular)values('11009732','Juan Carlos','Marca Llusco','69925731');
insert into empleados(ci,nombres,apellidos,celular)values('10982772','Maria','Quispe Mamani','79875665');
insert into empleados(ci,nombres,apellidos,celular)values('7987668','Lizbeth','Cocarico Apaza','78765556');
 
insert into usuarios(email,password)values('davcanaza456@gmail.com','admin'); 
insert into usuarios(email,password)values('juanmarca@gmail.com','admin');
insert into usuarios(email,password)values('frank@gmail.com','admin');

insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('12990278','Juan','Perez Olguin','juan@gmail.com','Z.Belen C.Villanueva','67625541');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('10088213','Juan Carlos','Marca Llusco','juanm@gmail.com','Z.Franz Tamayo C.colorados','70129302');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('3418055','David Hector','Canaza Mayta','Davcanaza456@gmail.com','Z.Franz Tamayo C.Asturizaga','63218482');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('8123718','Pedro','Quispe Marca','pedro@gmail.com','Z.25 de Julio C.Colani','67652712');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('9182093','Matias','Condori Condori','matias@gmail.com','Z.Franz Tamayo C.Colorados','72671622');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('6452343','Carlos','Apaza Ochoa','carlos@gmail.com','Z.Franz Tamayo C.Colorados.','78855212');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('8971283','Milenca','Mamani Quispe','mielnca@gmail.com','Z.Mercado Carmen C.San Luis','78642621');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('9901283','Esther','Alanoca Quispe','esther@gmail.com','Z.Franz Tamayo C.Colorados','68538261');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('11293929','Miguel','Mamani Mamani','miguel@gmail.com','Z.25 de Julio C.Colani','65241452');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('3402199','Gabriel','Balboa Mamani','gabriel@gmail.com','Z.Franz Tamayo C.Colorados','78861522');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('12039109','Belen','Conde Apaza','belen@gmail.com','Z.Estrellas de Belen C.Avaroa','67152121');
insert into clientes(ci,nombre,apellido,correo,direccion,celular)values('10231232','Luis','Zambrana Mamani','luis@gmail.com','Z.Franz Tamayo C.Colorados','78861223');

insert into ventas(producto_id,cliente_id,fecha)values('1','2','2021-11-20');
insert into ventas(producto_id,cliente_id,fecha)values('5','2','2021-11-20');
insert into ventas(producto_id,cliente_id,fecha)values('2','2','2021-11-20');
insert into ventas(producto_id,cliente_id,fecha)values('1','4','2021-11-20');
insert into ventas(producto_id,cliente_id,fecha)values('1','5','2021-11-20');
insert into ventas(producto_id,cliente_id,fecha)values('5','8','2021-11-20');
insert into ventas(producto_id,cliente_id,fecha)values('3','2','2021-12-01');
insert into ventas(producto_id,cliente_id,fecha)values('5','1','2021-12-01');
insert into ventas(producto_id,cliente_id,fecha)values('6','4','2021-12-02');
insert into ventas(producto_id,cliente_id,fecha)values('7','5','2021-12-02');

insert into productos(nombre,descripcion,precio)values('Paneton','Sabor Chocolate','35.50');
insert into productos(nombre,descripcion,precio)values('Galletas','Chispas Chocolate','15.50');
insert into productos(nombre,descripcion,precio)values('Bizcochos','Sabor Vainilla','5.50');
insert into productos(nombre,descripcion,precio)values('Alfafores','Sabor Leche','3.00');
insert into productos(nombre,descripcion,precio)values('Leche','Pil Deslactosada 500 ml','5.00');
insert into productos(nombre,descripcion,precio)values('Mantequilla','Pil 600 ml','4.50');
insert into productos(nombre,descripcion,precio)values('Yogurt','Sabor Frutilla 300 ml','6.50');
insert into productos(nombre,descripcion,precio)values('Refresco','CocaCola 2 lts','12.00');
insert into productos(nombre,descripcion,precio)values('Huevos','criollos','1.50');
insert into productos(nombre,descripcion,precio)values('Detergente','Patito','2.50');

