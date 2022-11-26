
--drop database MinisterioPublico;
GO

create database MANTENIMIENTO
GO

use MANTENIMIENTO; 
GO

create table CHEQUE (
	id_cheque bigint IDENTITY(1,1) PRIMARY KEY,
	cobro bit,
	fecha_cobro datetime2,
	id_chequera bigint not null
);

GO

create table CHEQUERA (
	id_chequera bigint identity not null primary key,
	fecha_creacion datetime DEFAULT(getdate()) not null,
	id_cuenta bigint not null,
	id_estado_chequera bigint not null
);

create table cuenta_bancaria (
id_cuenta bigint identity not null primary key,
id_tipo_cuenta bigint not null,
id_usuario bigint not null
);

create table estado_chequera (
id_estado bigint identity not null primary key,
detalle varchar(255) not null,
);

create table tipo_cuenta (
id_tipo_cuenta bigint identity not null primary key,
detalle varchar(255) not null
);

create table usuario (

id_usuario bigint identity not null primary key,
apellido varchar(255) not null,
dpi int not null,
nombre varchar(255) not null

);

alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (

id_chequera) references chequera;

alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (

id_cuenta) references cuenta_bancaria;

alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (

id_estado_chequera) references estado_chequera;

alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (

id_tipo_cuenta) references tipo_cuenta;

alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (

id_usuario) references usuario;

create table cheque (

id_cheque bigint identity not null,
cobro bit,
fecha_cobro datetime2,
id_chequera bigint not null,
primary key (

id_cheque)
);

create table chequera (

id_chequera bigint identity not null,
fecha_creacion datetime DEFAULT(

getdate(

)) not null,
id_cuenta bigint not null,
id_estado_chequera bigint not null,
primary key (

id_chequera)
);

create table cuenta_bancaria (

id_cuenta bigint identity not null,
id_tipo_cuenta bigint not null,
id_usuario bigint not null,
primary key (

id_cuenta)
);

create table estado_chequera (

id_estado bigint identity not null,
detalle varchar(

255) not null,
primary key (

id_estado)
);

create table tipo_cuenta (

id_tipo_cuenta bigint identity not null,
detalle varchar(

255) not null,
primary key (

id_tipo_cuenta)
);

create table usuario (

id_usuario bigint identity not null,
apellido varchar(

255) not null,
dpi int not null,
nombre varchar(

255) not null,
primary key (

id_usuario)
);

alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (

id_chequera) references chequera;

alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (

id_cuenta) references cuenta_bancaria;

alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (

id_estado_chequera) references estado_chequera;

alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (

id_tipo_cuenta) references tipo_cuenta;

alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (

id_usuario) references usuario;

create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta bigint not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta bigint identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi int not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta bigint not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta bigint identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi int not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta bigint not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta bigint identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi int not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
create table cheque (id_cheque bigint identity not null, cobro bit, fecha_cobro datetime2, id_chequera bigint not null, primary key (id_cheque));
create table chequera (id_chequera bigint identity not null, fecha_creacion datetime DEFAULT(getdate()) not null, id_cuenta bigint not null, id_estado_chequera int not null, primary key (id_chequera));
create table cuenta_bancaria (id_cuenta bigint identity not null, id_tipo_cuenta int not null, id_usuario bigint not null, primary key (id_cuenta));
create table estado_chequera (id_estado int identity not null, detalle varchar(255) not null, primary key (id_estado));
create table tipo_cuenta (id_tipo_cuenta int identity not null, detalle varchar(255) not null, primary key (id_tipo_cuenta));
create table usuario (id_usuario bigint identity not null, apellido varchar(255) not null, dpi bigint not null, nombre varchar(255) not null, primary key (id_usuario));
alter table cheque add constraint FKht4krkr618gnul1r28qjdmr26 foreign key (id_chequera) references chequera;
alter table chequera add constraint FK7m0r1u34ywf14budd3fswd4cs foreign key (id_cuenta) references cuenta_bancaria;
alter table chequera add constraint FKnpc80dmshbte2039evboyerdf foreign key (id_estado_chequera) references estado_chequera;
alter table cuenta_bancaria add constraint FKd2fmf3u8a2l3gqnijqp8fo0d6 foreign key (id_tipo_cuenta) references tipo_cuenta;
alter table cuenta_bancaria add constraint FKahgwvt34t8jklsmha8pqlc2to foreign key (id_usuario) references usuario;
