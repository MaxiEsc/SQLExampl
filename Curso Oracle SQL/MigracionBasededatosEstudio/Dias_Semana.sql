--------------------------------------------------------
-- Archivo creado  - sábado-abril-08-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DIAS_SEMANA
--------------------------------------------------------

  CREATE TABLE "CURSO_ORACLE"."DIAS_SEMANA" 
   (	"NUMERDIA" NUMBER(*,0), 
	"NOMBREDIA" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into CURSO_ORACLE.DIAS_SEMANA
SET DEFINE OFF;
Insert into CURSO_ORACLE.DIAS_SEMANA (NUMERDIA,NOMBREDIA) values ('1','lunes');
Insert into CURSO_ORACLE.DIAS_SEMANA (NUMERDIA,NOMBREDIA) values ('2','MARTES');
Insert into CURSO_ORACLE.DIAS_SEMANA (NUMERDIA,NOMBREDIA) values ('3','Miercoles');
--------------------------------------------------------
--  Constraints for Table DIAS_SEMANA
--------------------------------------------------------

  ALTER TABLE "CURSO_ORACLE"."DIAS_SEMANA" ADD CONSTRAINT "CK_DIAS_NOT_NULL" CHECK (nombredia IS NOT NULL) ENABLE;
  ALTER TABLE "CURSO_ORACLE"."DIAS_SEMANA" ADD CONSTRAINT "CK_NOMBRE_DIA" CHECK (nombredia IN (LOWER('lunes'),UPPER('lunes'),'Lunes',
LOWER('martes'),UPPER('martes'),'Martes'  ,
LOWER('Miercoles'),UPPER('Miercoles'),'Miercoles'  ,
LOWER('Jueves'),UPPER('Jueves'),'Jueves'  ,
LOWER('Viernes'),UPPER('Viernes'),'Viernes'  ,
LOWER('Sabado'),UPPER('Sabado'),'Sabado'  ,
LOWER('Domingo'),UPPER('Domingo'),'Domingo')) ENABLE;
  ALTER TABLE "CURSO_ORACLE"."DIAS_SEMANA" MODIFY ("NUMERDIA" NOT NULL ENABLE);
