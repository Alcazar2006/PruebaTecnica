
--DROP DATABASE MANTENIMIENTO;
--GO

CREATE DATABASE MANTENIMIENTO;
GO

USE MANTENIMIENTO; 
GO

CREATE TABLE USUARIO (
	id_usuario BIGINT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(80) not null,
	apellido VARCHAR(80) not null,
	dpi BIGINT not null,
);

GO

CREATE TABLE TIPO_CUENTA (
	id_tipo_cuenta INT IDENTITY(1,1) PRIMARY KEY,
	detalle VARCHAR(40) not null
);

GO

CREATE TABLE CUENTA_BANCARIA (
	id_cuenta BIGINT IDENTITY(1,1) PRIMARY KEY,
	id_tipo_cuenta INT not null,
	id_usuario BIGINT not null,
	CONSTRAINT FK_TIPO_CUENTA FOREIGN KEY (id_tipo_cuenta) REFERENCES TIPO_CUENTA,
	CONSTRAINT FK_USUARIO FOREIGN KEY (id_usuario) REFERENCES USUARIO
);

GO

CREATE TABLE ESTADO_CHEQUERA (
	id_estado INT IDENTITY(1,1) PRIMARY KEY,
	detalle VARCHAR(40) not null,
);

GO

CREATE TABLE CHEQUERA (
	id_chequera BIGINT IDENTITY(1,1) PRIMARY KEY,
	fecha_creacion datetime DEFAULT(getdate()) not null,
	id_cuenta BIGINT not null,
	id_estado_chequera INT not null,
	CONSTRAINT FK_CUENTA_BANCARIA FOREIGN KEY (id_cuenta) REFERENCES CUENTA_BANCARIA,
	CONSTRAINT FK_ESTADO_CHEQUERA FOREIGN KEY (id_estado_chequera) REFERENCES ESTADO_CHEQUERA
);

GO

CREATE TABLE CHEQUE (
	id_cheque BIGINT IDENTITY(1,1) PRIMARY KEY,
	cobro BIT,
	fecha_cobro DATETIME2,
	id_chequera BIGINT not null,
	CONSTRAINT FK_CHEQUERA FOREIGN KEY (id_chequera) REFERENCES CHEQUERA,
	
);

GO


--------------------------INSERTS------------------------------
INSERT INTO USUARIO(nombre,apellido,dpi) VALUES ('María Ivet','Montilla Fraga',2309494875371);
INSERT INTO USUARIO(nombre,apellido,dpi) VALUES ('Felix Candido ','Lucas Padilla',4851405748890);
INSERT INTO USUARIO(nombre,apellido,dpi) VALUES ('Ibrahim Walter',' Placido  Valles',5890439893635);
INSERT INTO USUARIO(nombre,apellido,dpi) VALUES ('Anna Maria ','Ubeda Llorente',6223786713347);
INSERT INTO USUARIO(nombre,apellido,dpi) VALUES ('Florencia Sabela','Tortosa de la Crúz',6130904240740);
INSERT INTO USUARIO(nombre,apellido,dpi) VALUES ('Diego Enrique',' Montoya Fernandéz',3201508041884);
INSERT INTO USUARIO(nombre,apellido,dpi) VALUES ('Esteban Mario',' Montoya Martinéz',9901567041884);

INSERT INTO TIPO_CUENTA (detalle) VALUES ('Ahorro'),('Monetaria');


INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,1);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,2);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (1,3);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,4);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,5);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,6);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (1,1);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (1,2);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (1,3);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,1);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,2);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,5);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (1,6);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,4);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (1,6);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (2,6);
INSERT INTO CUENTA_BANCARIA(id_tipo_cuenta,id_usuario) values (1,1);


INSERT INTO ESTADO_CHEQUERA(detalle) VALUES ('En Proceso'), ('Entregada'), ('Cancelada');

--INSERT INTO CHEQUERA (id_cuenta,id_estado_chequera) VALUES (1,1)

--INSERT INTO  CHEQUE(id_chequera) VALUES (1);
