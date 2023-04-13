/*
Activar esquema HR

CONFIGURACION DEL ESQUEMA
=============================================
INDICES:
 COUNTRY_C_ID_PK
 DEPT_ID_PK
 DEPT_LOCATION_IX 
 EMP_DEPARTMENT_IX 
 EMP_EMAIL_UK
 EMP_EMP_ID_PK
 EMP_JOB_IX
 EMP_MANAGER_IX
 EMP_NAME_IX
 JHIST_DEPARTMENT_IX
 JHIST_EMPLOYEE_IX
 JHIST_EMP_ID_ST_DATE_PK
 JHIST_JOB_IX
 JOB_ID_PK
 LOC_CITY_IX
 LOC_COUNTRY_IX
 LOC_ID_PK
 LOC_STATE_PROVINCE_IX
 REG_ID_PK

PROCEDIMIENTOS
 ADD_JOB_HISTORY
 SECURE_DML

SECUENCIAS
 DEPARTMENTS_SEQ
 EMPLOYEES_SEQ
 LOCATIONS_SEQ

TABLAS
 COUNTRIES
 DEPARTMENTS
 EMPLOYEES
 JOBS
 JOB_HISTORY
 LOCATIONS
 REGIONS

TRIGGERS
 SECURE_EMPLOYEES
 UPDATE_JOB_HISTORY

VISTAS
 EMP_DETAILS_VIEW

HR Table Descriptions
Table COUNTRIES 
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COUNTRY_ID                                NOT NULL CHAR(2)
 COUNTRY_NAME                                       VARCHAR2(40)
 REGION_ID                                          NUMBER

Table DEPARTMENTS
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPARTMENT_ID                             NOT NULL NUMBER(4)
 DEPARTMENT_NAME                           NOT NULL VARCHAR2(30)
 MANAGER_ID                                         NUMBER(6)
 LOCATION_ID                                        NUMBER(4)

Table EMPLOYEES
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                          NOT NULL DATE
 JOB_ID                                             NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

Table JOBS
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 JOB_ID                                    NOT NULL VARCHAR2(10)
 JOB_TITLE                                 NOT NULL VARCHAR2(35)
 MIN_SALARY                                         NUMBER(6)
 MAX_SALARY                                         NUMBER(6)

Table JOB_HISTORY
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 START_DATE                                NOT NULL DATE
 END_DATE                                  NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 DEPARTMENT_ID                                      NUMBER(4)

Table LOCATIONS
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LOCATION_ID                               NOT NULL NUMBER(4)
 STREET_ADDRESS                                     VARCHAR2(40)
 POSTAL_CODE                                        VARCHAR2(12)
 CITY                                      NOT NULL VARCHAR2(30)
 STATE_PROVINCE                                     VARCHAR2(25)
 COUNTRY_ID                                         CHAR(2)

Table REGIONS
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 REGION_ID                                 NOT NULL NUMBER
 REGION_NAME                                        VARCHAR2(25)

*/