--------------------------------------------------------
-- Archivo creado  - miércoles-mayo-13-2015   
--------------------------------------------------------
  DROP TABLE "ASIGNATURA" cascade constraints;
  DROP TABLE "AULA" cascade constraints;
  DROP TABLE "BIN$fEnHmb+1QUW4wEn5ThIp1g==$0" cascade constraints;
  DROP TABLE "BIN$Hd3TeRFJSlCbVveAnnCeDQ==$0" cascade constraints;
  DROP TABLE "BIN$R/jKz1sTSGuqGHjRYLesPg==$0" cascade constraints;
  DROP TABLE "BIN$1AB5cxZ6R2imzykEtLXMHA==$0" cascade constraints;
  DROP TABLE "BIN$8YN1VcBuTE2EThRmyxF/IQ==$0" cascade constraints;
  DROP TABLE "DOCENTES" cascade constraints;
  DROP TABLE "FALTAS" cascade constraints;
  DROP TABLE "GRUPO" cascade constraints;
  DROP TABLE "HORA_CLASE" cascade constraints;
  DROP TABLE "HORA_GUARDIA" cascade constraints;
--------------------------------------------------------
--  DDL for Table ASIGNATURA
--------------------------------------------------------

  CREATE TABLE "ASIGNATURA" 
   (	"COD_ASIGNATURA" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table AULA
--------------------------------------------------------

  CREATE TABLE "AULA" 
   (	"COD_AULA" VARCHAR2(50 BYTE), 
	"LUGAR" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table DOCENTES
--------------------------------------------------------

  CREATE TABLE "DOCENTES" 
   (	"COD_PROFE" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"APELLIDOS" VARCHAR2(50 BYTE), 
	"TIPO" VARCHAR2(50 BYTE), 
	"USUARIO" VARCHAR2(50 BYTE), 
	"PASSWORDS" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table FALTAS
--------------------------------------------------------

  CREATE TABLE "FALTAS" 
   (	"COD_PROFE_FALTA" VARCHAR2(50 BYTE), 
	"DIA_SEMANA_FALTA" VARCHAR2(10 BYTE), 
	"HORA_FALTA" VARCHAR2(10 BYTE), 
	"FECHA" DATE, 
	"COD_PROFE_CUBRE_GUARDIA" VARCHAR2(50 BYTE), 
	"DIA_SEMANA_GUARDIA" VARCHAR2(10 BYTE), 
	"HORA_GUARDIA" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GRUPO
--------------------------------------------------------

  CREATE TABLE "GRUPO" 
   (	"COD_GRUPO" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HORA_CLASE
--------------------------------------------------------

  CREATE TABLE "HORA_CLASE" 
   (	"COD_PROFE_CLASE" VARCHAR2(50 BYTE), 
	"DIA_SEMANA" VARCHAR2(10 BYTE), 
	"HORA" VARCHAR2(10 BYTE), 
	"COD_AULA" VARCHAR2(50 BYTE), 
	"COD_ASIGNATURA" VARCHAR2(50 BYTE), 
	"COD_GRUPO" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table HORA_GUARDIA
--------------------------------------------------------

  CREATE TABLE "HORA_GUARDIA" 
   (	"COD_PROFE_GUARDIA" VARCHAR2(50 BYTE), 
	"DIA_SEMANA" VARCHAR2(10 BYTE), 
	"HORA" VARCHAR2(10 BYTE), 
	"FIRMADO" VARCHAR2(2 BYTE)
   ) ;
REM INSERTING into ASIGNATURA
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('PRG','Programacion');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('SISIN','Sistemas Informaticos');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('ENDES','Entornos De Desarrollo');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('FOL','Formación y Orientación Laboral');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('ING','Inglés');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('LMSGI','Lenguajes de Marcas y Sistemas de Gestión');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('BDD','Bases de Datos');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('LOG','Logica');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('MAT','Matematicas');
Insert into ASIGNATURA (COD_ASIGNATURA,NOMBRE) values ('TLL','Taller');
REM INSERTING into AULA
Insert into AULA (COD_AULA,LUGAR) values ('B-302','Primera planta. Edificio 2');
Insert into AULA (COD_AULA,LUGAR) values ('B-301','Primera planta. Edificio 2.');
REM INSERTING into "BIN$fEnHmb+1QUW4wEn5ThIp1g==$0"
REM INSERTING into "BIN$Hd3TeRFJSlCbVveAnnCeDQ==$0"
REM INSERTING into "BIN$R/jKz1sTSGuqGHjRYLesPg==$0"
REM INSERTING into "BIN$1AB5cxZ6R2imzykEtLXMHA==$0"
REM INSERTING into "BIN$8YN1VcBuTE2EThRmyxF/IQ==$0"
REM INSERTING into DOCENTES
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe001','Maite','Perez','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe002','Raquel','Rivera','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe003','Jose','Rodriguez','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe004','Antonio','Castro','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe005','Raul','Marqueta','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe006','Rosa','Diaz','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe007','Carmen','Galan','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe008','Roberto','Sanchez','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe009','Ulises','Gonzalez','profesor',null,null);
Insert into DOCENTES (COD_PROFE,NOMBRE,APELLIDOS,TIPO,USUARIO,PASSWORDS) values ('profe010','Javier','Klein','jefe estudios',null,null);
REM INSERTING into FALTAS
REM INSERTING into GRUPO
Insert into GRUPO (COD_GRUPO,NOMBRE) values ('VS1DAW','1 de Daw. Vespertino');
Insert into GRUPO (COD_GRUPO,NOMBRE) values ('VS1DAM','1 de Desarrollo de Aplicaciones Web. Vespertino');
REM INSERTING into HORA_CLASE
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe001','lunes','hora1','B-301','PRG','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe001','lunes','hora2','B-301','PRG','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe002','lunes','hora3','B-301','SISIN','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe002','lunes','hora4','B-301','SISIN','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe001','jueves','hora5','B-301','PRG','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe001','jueves','hora6','B-301','PRG','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe001','martes','hora3','B-302','PRG','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe001','martes','hora4','B-302','PRG','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe002','martes','hora5','B-302','SISIN','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe002','martes','hora6','B-302','SISIN','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe002','jueves','hora1','B-302','SISIN','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe002','jueves','hora2','B-302','SISIN','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe003','lunes','hora5','B-301','ING','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe003','lunes','hora6','B-301','ING','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe003','miercoles','hora1','B-301','ING','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe003','miercoles','hora2','B-301','ING','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe003','jueves','hora3','B-302','ING','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe003','jueves','hora4','B-302','ING','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe004','lunes','hora1','B-302','TLL','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe004','lunes','hora2','B-302','TLL','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe004','miercoles','hora3','B-301','TLL','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe004','miercoles','hora4','B-301','TLL','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe004','jueves','hora5','B-301','TLL','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe004','jueves','hora6','B-301','TLL','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe005','lunes','hora3','B-302','MAT','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe005','lunes','hora4','B-302','MAT','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe005','miercoles','hora5','B-301','MAT','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe005','miercoles','hora6','B-301','MAT','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe005','viernes','hora1','B-301','MAT','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe005','viernes','hora2','B-301','MAT','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe006','lunes','hora5','B-302','LOG','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe006','lunes','hora6','B-302','LOG','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe006','miercoles','hora1','B-302','LOG','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe006','miercoles','hora2','B-302','LOG','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe006','viernes','hora3','B-301','LOG','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe006','viernes','hora4','B-301','LOG','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe007','martes','hora1','B-301','BDD','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe007','martes','hora2','B-301','BDD','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe007','miercoles','hora3','B-302','BDD','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe007','miercoles','hora4','B-302','BDD','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe007','viernes','hora5','B-301','BDD','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe007','viernes','hora6','B-301','BDD','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe008','martes','hora3','B-301','LMSGI','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe008','martes','hora4','B-301','LMSGI','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe008','miercoles','hora5','B-302','LMSGI','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe008','miercoles','hora6','B-302','LMSGI','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe008','viernes','hora1','B-302','LMSGI','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe008','viernes','hora2','B-302','LMSGI','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe009','martes','hora5','B-301','ENDES','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe009','martes','hora6','B-301','ENDES','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe009','jueves','hora1','B-301','ENDES','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe009','jueves','hora2','B-301','ENDES','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe009','viernes','hora3','B-302','ENDES','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe009','viernes','hora4','B-302','ENDES','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe010','martes','hora1','B-302','FOL','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe010','martes','hora2','B-302','FOL','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe010','jueves','hora3','B-301','FOL','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe010','jueves','hora4','B-301','FOL','VS1DAW');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe010','viernes','hora5','B-302','FOL','VS1DAM');
Insert into HORA_CLASE (COD_PROFE_CLASE,DIA_SEMANA,HORA,COD_AULA,COD_ASIGNATURA,COD_GRUPO) values ('profe010','viernes','hora6','B-302','FOL','VS1DAM');
REM INSERTING into HORA_GUARDIA
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe002','lunes','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe002','lunes','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','lunes','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','lunes','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','lunes','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','lunes','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','lunes','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','lunes','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','lunes','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','lunes','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','lunes','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','lunes','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe006','martes','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe006','martes','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe008','martes','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe008','martes','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe007','martes','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe007','martes','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe009','martes','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe009','martes','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe001','martes','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe001','martes','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','martes','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','martes','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe002','miercoles','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe002','miercoles','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe001','miercoles','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe001','miercoles','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','miercoles','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','miercoles','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','miercoles','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','miercoles','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe006','miercoles','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe006','miercoles','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe007','miercoles','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe007','miercoles','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe008','jueves','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe008','jueves','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe007','jueves','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe007','jueves','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe009','jueves','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe009','jueves','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe001','jueves','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe001','jueves','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe002','jueves','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe002','jueves','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','jueves','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','jueves','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe006','viernes','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe006','viernes','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','viernes','hora1',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe003','viernes','hora2',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe008','viernes','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe008','viernes','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','viernes','hora3',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe004','viernes','hora4',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe009','viernes','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe009','viernes','hora6',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','viernes','hora5',null);
Insert into HORA_GUARDIA (COD_PROFE_GUARDIA,DIA_SEMANA,HORA,FIRMADO) values ('profe005','viernes','hora6',null);
--------------------------------------------------------
--  Constraints for Table ASIGNATURA
--------------------------------------------------------

  ALTER TABLE "ASIGNATURA" ADD CONSTRAINT "PK_ASIGNATURA" PRIMARY KEY ("COD_ASIGNATURA") ENABLE;
 
  ALTER TABLE "ASIGNATURA" MODIFY ("COD_ASIGNATURA" NOT NULL ENABLE);
 
  ALTER TABLE "ASIGNATURA" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AULA
--------------------------------------------------------

  ALTER TABLE "AULA" ADD CONSTRAINT "PK_AULA" PRIMARY KEY ("COD_AULA") ENABLE;
 
  ALTER TABLE "AULA" MODIFY ("COD_AULA" NOT NULL ENABLE);
 
  ALTER TABLE "AULA" MODIFY ("LUGAR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOCENTES
--------------------------------------------------------

  ALTER TABLE "DOCENTES" ADD CONSTRAINT "CK_TIPO_DOCENTES" CHECK (TIPO LIKE 'profesor' OR TIPO LIKE 'jefe estudios') ENABLE;
 
  ALTER TABLE "DOCENTES" ADD CONSTRAINT "PK_DOCENTES" PRIMARY KEY ("COD_PROFE") ENABLE;
 
  ALTER TABLE "DOCENTES" MODIFY ("COD_PROFE" NOT NULL ENABLE);
 
  ALTER TABLE "DOCENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "DOCENTES" MODIFY ("APELLIDOS" NOT NULL ENABLE);
 
  ALTER TABLE "DOCENTES" MODIFY ("TIPO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FALTAS
--------------------------------------------------------

  ALTER TABLE "FALTAS" ADD CONSTRAINT "PK_FALTAS" PRIMARY KEY ("COD_PROFE_FALTA", "DIA_SEMANA_FALTA", "HORA_FALTA", "FECHA") ENABLE;
 
  ALTER TABLE "FALTAS" MODIFY ("COD_PROFE_FALTA" NOT NULL ENABLE);
 
  ALTER TABLE "FALTAS" MODIFY ("DIA_SEMANA_FALTA" NOT NULL ENABLE);
 
  ALTER TABLE "FALTAS" MODIFY ("HORA_FALTA" NOT NULL ENABLE);
 
  ALTER TABLE "FALTAS" MODIFY ("FECHA" NOT NULL ENABLE);
 
  ALTER TABLE "FALTAS" MODIFY ("COD_PROFE_CUBRE_GUARDIA" NOT NULL ENABLE);
 
  ALTER TABLE "FALTAS" MODIFY ("DIA_SEMANA_GUARDIA" NOT NULL ENABLE);
 
  ALTER TABLE "FALTAS" MODIFY ("HORA_GUARDIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GRUPO
--------------------------------------------------------

  ALTER TABLE "GRUPO" ADD CONSTRAINT "PK_GRUPO" PRIMARY KEY ("COD_GRUPO") ENABLE;
 
  ALTER TABLE "GRUPO" MODIFY ("COD_GRUPO" NOT NULL ENABLE);
 
  ALTER TABLE "GRUPO" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HORA_CLASE
--------------------------------------------------------

  ALTER TABLE "HORA_CLASE" ADD CONSTRAINT "PK_HORA_CLASE" PRIMARY KEY ("COD_PROFE_CLASE", "DIA_SEMANA", "HORA") ENABLE;
 
  ALTER TABLE "HORA_CLASE" MODIFY ("COD_PROFE_CLASE" NOT NULL ENABLE);
 
  ALTER TABLE "HORA_CLASE" MODIFY ("DIA_SEMANA" NOT NULL ENABLE);
 
  ALTER TABLE "HORA_CLASE" MODIFY ("HORA" NOT NULL ENABLE);
 
  ALTER TABLE "HORA_CLASE" MODIFY ("COD_AULA" NOT NULL ENABLE);
 
  ALTER TABLE "HORA_CLASE" MODIFY ("COD_ASIGNATURA" NOT NULL ENABLE);
 
  ALTER TABLE "HORA_CLASE" MODIFY ("COD_GRUPO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HORA_GUARDIA
--------------------------------------------------------

  ALTER TABLE "HORA_GUARDIA" ADD CONSTRAINT "CK_FIRMADO_OPCIONES" CHECK ((firmado like 'SI') OR (firmado like'NO')) ENABLE;
 
  ALTER TABLE "HORA_GUARDIA" ADD CONSTRAINT "PK_HORA_GUARDIA" PRIMARY KEY ("COD_PROFE_GUARDIA", "DIA_SEMANA", "HORA") ENABLE;
 
  ALTER TABLE "HORA_GUARDIA" MODIFY ("COD_PROFE_GUARDIA" NOT NULL ENABLE);
 
  ALTER TABLE "HORA_GUARDIA" MODIFY ("DIA_SEMANA" NOT NULL ENABLE);
 
  ALTER TABLE "HORA_GUARDIA" MODIFY ("HORA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FALTAS
--------------------------------------------------------

  ALTER TABLE "FALTAS" ADD CONSTRAINT "FK_FALTA_HORA_CLASE" FOREIGN KEY ("COD_PROFE_FALTA", "DIA_SEMANA_FALTA", "HORA_FALTA")
	  REFERENCES "HORA_CLASE" ("COD_PROFE_CLASE", "DIA_SEMANA", "HORA") ENABLE;
 
  ALTER TABLE "FALTAS" ADD CONSTRAINT "FK_FALTA_HORA_GUARDIA" FOREIGN KEY ("COD_PROFE_CUBRE_GUARDIA", "DIA_SEMANA_GUARDIA", "HORA_GUARDIA")
	  REFERENCES "HORA_GUARDIA" ("COD_PROFE_GUARDIA", "DIA_SEMANA", "HORA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HORA_CLASE
--------------------------------------------------------

  ALTER TABLE "HORA_CLASE" ADD CONSTRAINT "FK_HORA_CLASE_ASIGNATURA" FOREIGN KEY ("COD_ASIGNATURA")
	  REFERENCES "ASIGNATURA" ("COD_ASIGNATURA") ENABLE;
 
  ALTER TABLE "HORA_CLASE" ADD CONSTRAINT "FK_HORA_CLASE_AULA" FOREIGN KEY ("COD_AULA")
	  REFERENCES "AULA" ("COD_AULA") ENABLE;
 
  ALTER TABLE "HORA_CLASE" ADD CONSTRAINT "FK_HORA_CLASE_DOCENTES" FOREIGN KEY ("COD_PROFE_CLASE")
	  REFERENCES "DOCENTES" ("COD_PROFE") ENABLE;
 
  ALTER TABLE "HORA_CLASE" ADD CONSTRAINT "FK_HORA_CLASE_GRUPO" FOREIGN KEY ("COD_GRUPO")
	  REFERENCES "GRUPO" ("COD_GRUPO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HORA_GUARDIA
--------------------------------------------------------

  ALTER TABLE "HORA_GUARDIA" ADD CONSTRAINT "FK_HORA_GUARDIA_DOCENTES" FOREIGN KEY ("COD_PROFE_GUARDIA")
	  REFERENCES "DOCENTES" ("COD_PROFE") ENABLE;
