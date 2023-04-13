--------------------------------------------------------
-- Archivo creado  - sábado-abril-08-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table VISITANTES
--------------------------------------------------------

  CREATE TABLE "CURSO_ORACLE"."VISITANTES" 
   (	"NOMBRE" VARCHAR2(30 BYTE), 
	"EDAD" NUMBER(2,0), 
	"SEXO" CHAR(1 BYTE) DEFAULT 'f', 
	"DOMICILIO" VARCHAR2(30 BYTE), 
	"CIUDAD" VARCHAR2(20 BYTE) DEFAULT 'Cordoba', 
	"TELEFONO" VARCHAR2(11 BYTE), 
	"MAIL" VARCHAR2(30 BYTE) DEFAULT 'no tiene', 
	"MONTOCOMPRA" NUMBER(6,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into CURSO_ORACLE.VISITANTES
SET DEFINE OFF;
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Susana Molina','35','f','Colon 123','Cordoba',null,null,'59,8');
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Marcos Torres','29','m',null,'Carlos Paz',null,'marcostorres@hotmail.com','150,5');
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Mariana Juarez','45','f',null,'Carlos Paz',null,'no tiene','23,9');
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Fabian Perez','36','m',null,'Cordoba','4556677','fabianperez@xaxamail.com',null);
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Alejandra Gonzalez',null,'f',null,'La Falda',null,'no tiene','280,5');
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Gaston Perez','29','m',null,'Carlos Paz',null,'gastonperez1@gmail.com','95,4');
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Liliana Torres','40','f','Sarmiento 876','Cordoba',null,'no tiene','85');
Insert into CURSO_ORACLE.VISITANTES (NOMBRE,EDAD,SEXO,DOMICILIO,CIUDAD,TELEFONO,MAIL,MONTOCOMPRA) values ('Gabriela Duarte','21',null,null,'Rio Tercero',null,'gabrielaltorres@hotmail.com','321,5');
