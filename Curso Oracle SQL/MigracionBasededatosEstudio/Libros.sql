--------------------------------------------------------
-- Archivo creado  - sábado-abril-08-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LIBROS
--------------------------------------------------------

  CREATE TABLE "CURSO_ORACLE"."LIBROS" 
   (	"TITULO" VARCHAR2(40 BYTE), 
	"AUTOR" VARCHAR2(30 BYTE) DEFAULT 'Desconocido', 
	"EDITORIAL" VARCHAR2(40 BYTE), 
	"PRECIO" NUMBER(5,2), 
	"CANTIDAD" NUMBER(3,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into CURSO_ORACLE.LIBROS
SET DEFINE OFF;
Insert into CURSO_ORACLE.LIBROS (TITULO,AUTOR,EDITORIAL,PRECIO,CANTIDAD) values ('El quijote','Miguel de cerbantes','Lacasa del libro','715','10');
Insert into CURSO_ORACLE.LIBROS (TITULO,AUTOR,EDITORIAL,PRECIO,CANTIDAD) values ('El quijote 2','Miguel de cerbantes 2','La casa del libro','715','10');
Insert into CURSO_ORACLE.LIBROS (TITULO,AUTOR,EDITORIAL,PRECIO,CANTIDAD) values ('Gueerra','Desconocido','La bestia','715','10');
Insert into CURSO_ORACLE.LIBROS (TITULO,AUTOR,EDITORIAL,PRECIO,CANTIDAD) values ('Libro de politica 1','TIEARA','Casita','715','0');
Insert into CURSO_ORACLE.LIBROS (TITULO,AUTOR,EDITORIAL,PRECIO,CANTIDAD) values ('El chuncano','Federico Pagano','CasaFantastica','567','12');
--------------------------------------------------------
--  Constraints for Table LIBROS
--------------------------------------------------------

  ALTER TABLE "CURSO_ORACLE"."LIBROS" ADD CONSTRAINT "CK_LIBROS_PRECIO" CHECK (precio >=0 AND precio <= 1000) ENABLE;
  ALTER TABLE "CURSO_ORACLE"."LIBROS" MODIFY ("EDITORIAL" NOT NULL ENABLE);
  ALTER TABLE "CURSO_ORACLE"."LIBROS" MODIFY ("TITULO" NOT NULL ENABLE);
