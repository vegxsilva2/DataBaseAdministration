--------------------------------------------------------
-- Archivo creado  - miércoles-mayo-29-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_EJERCICIOS
--------------------------------------------------------

   CREATE SEQUENCE  "LIFEFIT"."SEQ_EJERCICIOS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CENTRO
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."CENTRO" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 CHAR), 
	"DIRECCION" VARCHAR2(510 BYTE), 
	"CPOSTAL" VARCHAR2(10 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Table CITA
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."CITA" 
   (	"FECHAYHORA" DATE, 
	"ID" NUMBER(*,0), 
	"MODALIDAD" VARCHAR2(255 CHAR), 
	"CLIENTE_ID" NUMBER(*,0), 
	"ESTADO" VARCHAR2(10 BYTE) DEFAULT 'pendiente'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."CLIENTE" 
   (	"ID" NUMBER(*,0), 
	"OBJETIVO" VARCHAR2(255 CHAR), 
	"PREFERENCIAS" VARCHAR2(255 CHAR), 
	"DIETA_ID" NUMBER(*,0), 
	"CENTRO_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
  GRANT DELETE ON "LIFEFIT"."CLIENTE" TO "GERENTE";
  GRANT INSERT ON "LIFEFIT"."CLIENTE" TO "GERENTE";
  GRANT SELECT ON "LIFEFIT"."CLIENTE" TO "GERENTE";
  GRANT UPDATE ON "LIFEFIT"."CLIENTE" TO "GERENTE";
--------------------------------------------------------
--  DDL for Table CONFORMAN
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."CONFORMAN" 
   (	"SERIES" VARCHAR2(255 CHAR), 
	"REPETICIONES" VARCHAR2(255 CHAR), 
	"DURACION" VARCHAR2(255 CHAR), 
	"EJERCICIO_ID" NUMBER(*,0), 
	"RUTINA_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
  GRANT DELETE ON "LIFEFIT"."CONFORMAN" TO "ENTRENADOR";
  GRANT INSERT ON "LIFEFIT"."CONFORMAN" TO "ENTRENADOR";
  GRANT SELECT ON "LIFEFIT"."CONFORMAN" TO "ENTRENADOR";
  GRANT UPDATE ON "LIFEFIT"."CONFORMAN" TO "ENTRENADOR";
--------------------------------------------------------
--  DDL for Table DIETA
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."DIETA" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 CHAR), 
	"DESCRIPCION" VARCHAR2(255 CHAR), 
	"TIPO" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Table EJERCICIO
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."EJERCICIO" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 CHAR), 
	"DESCRIPCION" VARCHAR2(700 CHAR), 
	"VIDEO" VARCHAR2(500 BYTE), 
	"IMAGEN" BLOB, 
	"PUBLICO" CHAR(1 BYTE) DEFAULT 'S'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" 
 LOB ("IMAGEN") STORE AS SECUREFILE (
  TABLESPACE "TS_LIFEFIT" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
  GRANT DELETE ON "LIFEFIT"."EJERCICIO" TO "ENTRENADOR";
  GRANT INSERT ON "LIFEFIT"."EJERCICIO" TO "ENTRENADOR";
  GRANT SELECT ON "LIFEFIT"."EJERCICIO" TO "ENTRENADOR";
  GRANT UPDATE ON "LIFEFIT"."EJERCICIO" TO "ENTRENADOR";
--------------------------------------------------------
--  DDL for Table EJERCICIOS_EXT
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."EJERCICIOS_EXT" 
   (	"NOMBRE" VARCHAR2(600 CHAR), 
	"DESCRIPCION" VARCHAR2(600 CHAR), 
	"VIDEO" VARCHAR2(600 CHAR)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "DIRECTORIO_EXT"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
 skip 1
 CHARACTERSET UTF8
 FIELDS TERMINATED BY ';'
 OPTIONALLY ENCLOSED BY '"'
 MISSING FIELD VALUES ARE NULL
 (nombre, descripcion, video)
 )
      LOCATION
       ( 'Ejercicios.csv'
       )
    )
   REJECT LIMIT 0 ;
--------------------------------------------------------
--  DDL for Table ELEMENTOCALENDARIO
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."ELEMENTOCALENDARIO" 
   (	"FECHAYHORA" DATE, 
	"ENTRENADOR_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Table ENTRENA
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."ENTRENA" 
   (	"ESPECIALIDAD" VARCHAR2(255 CHAR), 
	"ENTRENADOR_ID" NUMBER(*,0), 
	"CLIENTE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
  GRANT DELETE ON "LIFEFIT"."ENTRENA" TO "GERENTE";
  GRANT INSERT ON "LIFEFIT"."ENTRENA" TO "GERENTE";
  GRANT SELECT ON "LIFEFIT"."ENTRENA" TO "GERENTE";
  GRANT UPDATE ON "LIFEFIT"."ENTRENA" TO "GERENTE";
--------------------------------------------------------
--  DDL for Table ENTRENADOR
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."ENTRENADOR" 
   (	"ID" NUMBER(*,0), 
	"DISPONIBILIDAD" DATE, 
	"CENTRO_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
  GRANT DELETE ON "LIFEFIT"."ENTRENADOR" TO "GERENTE";
  GRANT INSERT ON "LIFEFIT"."ENTRENADOR" TO "GERENTE";
  GRANT SELECT ON "LIFEFIT"."ENTRENADOR" TO "GERENTE";
  GRANT UPDATE ON "LIFEFIT"."ENTRENADOR" TO "GERENTE";
--------------------------------------------------------
--  DDL for Table GERENTE
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."GERENTE" 
   (	"ID" NUMBER(*,0), 
	"DESPACHO" VARCHAR2(560 CHAR), 
	"HORARIO" DATE, 
	"CENTRO_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Table PLAN
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."PLAN" 
   (	"INICIO" DATE, 
	"FIN" DATE, 
	"RUTINA_ID" NUMBER(*,0), 
	"ENTRENA_ENTRENADOR_ID" NUMBER(*,0), 
	"ENTRENA_CLIENTE_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Table RUTINA
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."RUTINA" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 CHAR), 
	"DESCRIPCION" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
  GRANT DELETE ON "LIFEFIT"."RUTINA" TO "ENTRENADOR";
  GRANT INSERT ON "LIFEFIT"."RUTINA" TO "ENTRENADOR";
  GRANT SELECT ON "LIFEFIT"."RUTINA" TO "ENTRENADOR";
  GRANT UPDATE ON "LIFEFIT"."RUTINA" TO "ENTRENADOR";
--------------------------------------------------------
--  DDL for Table SESION
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."SESION" 
   (	"INICIO" DATE, 
	"FIN" DATE, 
	"PRESENCIAL" VARCHAR2(10 CHAR), 
	"PLAN_INICIO" DATE, 
	"PLAN_RUTINA_ID" NUMBER(*,0), 
	"DESCRIPCION" VARCHAR2(700 CHAR), 
	"DATOS_SALUD" VARCHAR2(700 CHAR), 
	"PLAN_CLIENTE_ID" NUMBER, 
	"PLAN_ENTRENADOR_ID" NUMBER, 
	"VIDEO" VARCHAR2(500 BYTE), 
	"ESTADO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "LIFEFIT"."USUARIO" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 CHAR), 
	"APELLIDOS" VARCHAR2(100 CHAR), 
	"TELEFONO" VARCHAR2(15 BYTE), 
	"DIRECCION" VARCHAR2(510 CHAR) ENCRYPT USING 'AES192' 'SHA-1', 
	"CORREOE" VARCHAR2(60 BYTE), 
	"USUARIOORACLE" VARCHAR2(155 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for View CLIENTE_CITAS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LIFEFIT"."CLIENTE_CITAS_VIEW" ("FECHA_CITA", "ENTRENADOR_ID", "MODALIDAD", "ESTADO") AS 
  SELECT 
    C.FECHAYHORA AS FECHA_CITA,
    EL.ENTRENADOR_ID,
    C.MODALIDAD,
    C.ESTADO
FROM 
    CITA C
JOIN 
    USUARIO U ON C.CLIENTE_ID = U.ID
JOIN ELEMENTOCALENDARIO EL ON C.FECHAYHORA = EL.FECHAYHORA
WHERE UPPER(U.USUARIOORACLE) = USER
;
  GRANT SELECT ON "LIFEFIT"."CLIENTE_CITAS_VIEW" TO "CLIENTE";
  GRANT UPDATE ("ENTRENADOR_ID") ON "LIFEFIT"."CLIENTE_CITAS_VIEW" TO "CLIENTE";
  GRANT INSERT ON "LIFEFIT"."CLIENTE_CITAS_VIEW" TO "CLIENTE";
  GRANT DELETE ON "LIFEFIT"."CLIENTE_CITAS_VIEW" TO "CLIENTE";
  GRANT UPDATE ("MODALIDAD") ON "LIFEFIT"."CLIENTE_CITAS_VIEW" TO "CLIENTE";
--------------------------------------------------------
--  DDL for View ENTRENADOR_CITAS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LIFEFIT"."ENTRENADOR_CITAS_VIEW" ("FECHA_CITA", "CLIENTE_ID", "MODALIDAD", "ESTADO") AS 
  SELECT  
    C.FECHAYHORA AS FECHA_CITA,
    C.CLIENTE_ID,
    C.MODALIDAD,
    C.ESTADO
FROM 
    CITA C
JOIN ELEMENTOCALENDARIO EL ON C.FECHAYHORA = EL.FECHAYHORA
JOIN  USUARIO U ON EL.ENTRENADOR_ID = U.ID
WHERE UPPER(U.USUARIOORACLE) = USER AND C.ESTADO IN ('confirmada','pendiente')
;
  GRANT SELECT ON "LIFEFIT"."ENTRENADOR_CITAS_VIEW" TO "ENTRENADOR";
  GRANT UPDATE ("ESTADO") ON "LIFEFIT"."ENTRENADOR_CITAS_VIEW" TO "ENTRENADOR";
  GRANT DELETE ON "LIFEFIT"."ENTRENADOR_CITAS_VIEW" TO "ENTRENADOR";
  GRANT INSERT ON "LIFEFIT"."ENTRENADOR_CITAS_VIEW" TO "ENTRENADOR";
--------------------------------------------------------
--  DDL for View V_ASIGNACION_PLAN_ENTRENADOR
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LIFEFIT"."V_ASIGNACION_PLAN_ENTRENADOR" ("INICIO_PLAN", "FIN_PLAN", "INICIO_SESION", "FIN_SESION", "RUTINA", "CLIENTE_ID", "ENTRENADOR_ID") AS 
  select p.inicio as inicio_plan, p.fin as fin_plan, s.inicio as inicio_sesion, s.fin as fin_sesion, r.nombre as rutina, en.cliente_id, en.entrenador_id
from plan p 
join usuario u on p.entrena_entrenador_id=u.id
join entrena en on p.entrena_entrenador_id=en.entrenador_id and p.entrena_cliente_id=en.cliente_id
join sesion s on p.inicio=s.plan_inicio and p.rutina_id=s.plan_rutina_id
join rutina r on p.rutina_id=r.id
where upper(u.usuariooracle) = USER
;
  GRANT DELETE ON "LIFEFIT"."V_ASIGNACION_PLAN_ENTRENADOR" TO "ENTRENADOR";
  GRANT INSERT ON "LIFEFIT"."V_ASIGNACION_PLAN_ENTRENADOR" TO "ENTRENADOR";
  GRANT SELECT ON "LIFEFIT"."V_ASIGNACION_PLAN_ENTRENADOR" TO "ENTRENADOR";
  GRANT UPDATE ON "LIFEFIT"."V_ASIGNACION_PLAN_ENTRENADOR" TO "ENTRENADOR";
--------------------------------------------------------
--  DDL for View VEJERCICIO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LIFEFIT"."VEJERCICIO" ("ID", "NOMBRE", "DESCRIPCION", "VIDEO", "IMAGEN", "PUBLICO") AS 
  select "ID","NOMBRE","DESCRIPCION","VIDEO","IMAGEN","PUBLICO" from lifefit.ejercicio where PUBLICO='S' with read only
;
--------------------------------------------------------
--  DDL for View V_PERFIL_CLIENTE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LIFEFIT"."V_PERFIL_CLIENTE" ("OBJETIVO", "PREFERENCIAS") AS 
  select C.objetivo, C.preferencias
from CLIENTE C
join USUARIO U on U.id = C.id
where upper(U.usuariooracle) = USER
;
  GRANT UPDATE ON "LIFEFIT"."V_PERFIL_CLIENTE" TO "CLIENTE";
  GRANT SELECT ON "LIFEFIT"."V_PERFIL_CLIENTE" TO "CLIENTE";
--------------------------------------------------------
--  DDL for View V_SEGUIMIENTO_ENTRENADOR
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LIFEFIT"."V_SEGUIMIENTO_ENTRENADOR" ("ID", "OBJETIVO", "DATOS_SALUD", "DESCRIPCION", "VIDEO", "INICIO", "FIN") AS 
  SELECT c.id, c.OBJETIVO,  s.DATOS_SALUD, s.DESCRIPCION, s.VIDEO, s.INICIO, s.FIN
FROM SESION s
JOIN PLAN p ON s.PLAN_INICIO = p.INICIO AND s.PLAN_RUTINA_ID = p.RUTINA_ID
JOIN ENTRENA e ON p.ENTRENA_ENTRENADOR_ID = e.ENTRENADOR_ID AND p.ENTRENA_CLIENTE_ID = e.CLIENTE_ID
JOIN CLIENTE c ON e.CLIENTE_ID = c.ID
JOIN USUARIO U ON e.ENTRENADOR_ID = U.ID
WHERE upper(U.USUARIOORACLE) = USER
;
  GRANT SELECT ON "LIFEFIT"."V_SEGUIMIENTO_ENTRENADOR" TO "ENTRENADOR";
--------------------------------------------------------
--  DDL for View V_SESIONES_CLIENTE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LIFEFIT"."V_SESIONES_CLIENTE" ("INICIO", "FIN", "PRESENCIAL", "PLAN_INICIO", "PLAN_RUTINA_ID", "DESCRIPCION", "DATOS_SALUD", "PLAN_CLIENTE_ID", "PLAN_ENTRENADOR_ID", "VIDEO", "ESTADO") AS 
  SELECT S."INICIO",S."FIN",S."PRESENCIAL",S."PLAN_INICIO",S."PLAN_RUTINA_ID",S."DESCRIPCION",S."DATOS_SALUD",S."PLAN_CLIENTE_ID",S."PLAN_ENTRENADOR_ID",S."VIDEO",S."ESTADO"
FROM SESION S
JOIN PLAN P ON S.PLAN_INICIO = P.INICIO AND S.PLAN_RUTINA_ID = P.RUTINA_ID and S.PLAN_CLIENTE_ID=P.ENTRENA_CLIENTE_ID and S.PLAN_ENTRENADOR_ID=P.ENTRENA_ENTRENADOR_ID
JOIN USUARIO U ON S.PLAN_CLIENTE_ID = U.ID
WHERE upper(U.USUARIOORACLE) = USER
;
  GRANT UPDATE ("VIDEO") ON "LIFEFIT"."V_SESIONES_CLIENTE" TO "CLIENTE";
  GRANT UPDATE ("DATOS_SALUD") ON "LIFEFIT"."V_SESIONES_CLIENTE" TO "CLIENTE";
  GRANT UPDATE ("ESTADO") ON "LIFEFIT"."V_SESIONES_CLIENTE" TO "CLIENTE";
  GRANT SELECT ON "LIFEFIT"."V_SESIONES_CLIENTE" TO "CLIENTE";
  GRANT INSERT ON "LIFEFIT"."V_SESIONES_CLIENTE" TO "CLIENTE";
--------------------------------------------------------
--  DDL for Materialized View VM_EJERCICIOS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "LIFEFIT"."VM_EJERCICIOS" ("NOMBRE", "DESCRIPCION", "VIDEO")
  SEGMENT CREATION IMMEDIATE
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND START WITH sysdate+0 NEXT sysdate + 1
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS select * from ejercicios_ext;

   COMMENT ON MATERIALIZED VIEW "LIFEFIT"."VM_EJERCICIOS"  IS 'snapshot table for snapshot LIFEFIT.VM_EJERCICIOS';
REM INSERTING into LIFEFIT.CENTRO
SET DEFINE OFF;
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('10','Gimnasio FitLife','Calle de la Victoria, 12','29012');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('20','Gimnasio SportZone','Avenida de Andalucía, 34','29006');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('30','Gimnasio Vitality','Calle de la Unión, 8','29004');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('40','Gimnasio BodyFit','Calle de la Paz, 21','29002');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('50','Gimnasio PowerFlex','Avenida de la Constitución, 45','29008');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('60','Gimnasio ActiveLife','Calle de la Alcazabilla, 17','29015');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('70','Gimnasio IronStrong','Calle de la Trinidad, 5','29001');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('80','Gimnasio FitZone','Avenida de la Malagueta, 28','29016');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('90','Gimnasio Wellness','Calle de la Merced, 10','29013');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('100','Gimnasio FlexFit','Avenida de la Aurora, 9','29005');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('110','Gimnasio BodyTech','Calle de la Alameda, 22','29014');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('120','Gimnasio EliteFitness','Avenida de la Rosaleda, 7','29010');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('130','Gimnasio ActiveZone','Calle de la Victoria, 18','29011');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('140','Gimnasio PowerGym','Avenida de la Malagueta, 12','29017');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('150','Gimnasio FitFlex','Calle de la Unión, 14','29003');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('160','Gimnasio SportLife','Avenida de Andalucía, 22','29007');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('170','Gimnasio VitalFit','Calle de la Paz, 31','29001');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('180','Gimnasio BodyZone','Avenida de la Constitución, 50','29009');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('190','Gimnasio IronFit','Calle de la Alcazabilla, 21','29016');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('200','Gimnasio FitStrong','Calle de la Trinidad, 8','29002');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('210','Gimnasio ActiveFit','Avenida de la Malagueta, 32','29018');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('220','Gimnasio WellnessZone','Calle de la Merced, 15','29014');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('230','Gimnasio FlexLife','Avenida de la Aurora, 12','29006');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('240','Gimnasio BodyFlex','Calle de la Alameda, 25','29015');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('250','Gimnasio EliteFit','Avenida de la Rosaleda, 10','29011');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('260','Gimnasio ActiveGym','Calle de la Victoria, 20','29010');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('270','Gimnasio PowerLife','Avenida de la Malagueta, 15','29017');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('280','Gimnasio FitTech','Calle de la Unión, 10','29003');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('290','Gimnasio SportFlex','Avenida de Andalucía, 28','29008');
Insert into LIFEFIT.CENTRO (ID,NOMBRE,DIRECCION,CPOSTAL) values ('300','Gimnasio VitalFlex','Calle de la Paz, 28','29001');
REM INSERTING into LIFEFIT.CITA
SET DEFINE OFF;
Insert into LIFEFIT.CITA (FECHAYHORA,ID,MODALIDAD,CLIENTE_ID,ESTADO) values (to_date('02/09/24','DD/MM/RR'),'31','Presencial','37','pendiente');
Insert into LIFEFIT.CITA (FECHAYHORA,ID,MODALIDAD,CLIENTE_ID,ESTADO) values (to_date('29/08/24','DD/MM/RR'),'31','Presencial','37','confirmada');
Insert into LIFEFIT.CITA (FECHAYHORA,ID,MODALIDAD,CLIENTE_ID,ESTADO) values (to_date('25/08/24','DD/MM/RR'),'31','Presencial','37','pendiente');
REM INSERTING into LIFEFIT.CLIENTE
SET DEFINE OFF;
Insert into LIFEFIT.CLIENTE (ID,OBJETIVO,PREFERENCIAS,DIETA_ID,CENTRO_ID) values ('37','Ponerse fuerte','Pesas','2','10');
Insert into LIFEFIT.CLIENTE (ID,OBJETIVO,PREFERENCIAS,DIETA_ID,CENTRO_ID) values ('1','Tonificación','Pesas','1','10');
Insert into LIFEFIT.CLIENTE (ID,OBJETIVO,PREFERENCIAS,DIETA_ID,CENTRO_ID) values ('2','Tonificación',null,'2','10');
Insert into LIFEFIT.CLIENTE (ID,OBJETIVO,PREFERENCIAS,DIETA_ID,CENTRO_ID) values ('3','Pérdida de peso',null,'2','10');
Insert into LIFEFIT.CLIENTE (ID,OBJETIVO,PREFERENCIAS,DIETA_ID,CENTRO_ID) values ('4','Musculación',null,'1','10');
Insert into LIFEFIT.CLIENTE (ID,OBJETIVO,PREFERENCIAS,DIETA_ID,CENTRO_ID) values ('5','Adelgazar 10 kg','Sin gluten, sin lactosa','1','10');
REM INSERTING into LIFEFIT.CONFORMAN
SET DEFINE OFF;
Insert into LIFEFIT.CONFORMAN (SERIES,REPETICIONES,DURACION,EJERCICIO_ID,RUTINA_ID) values ('5','12','35','7','1');
Insert into LIFEFIT.CONFORMAN (SERIES,REPETICIONES,DURACION,EJERCICIO_ID,RUTINA_ID) values ('4','10','30','1','1');
Insert into LIFEFIT.CONFORMAN (SERIES,REPETICIONES,DURACION,EJERCICIO_ID,RUTINA_ID) values ('2','30','15','2','2');
Insert into LIFEFIT.CONFORMAN (SERIES,REPETICIONES,DURACION,EJERCICIO_ID,RUTINA_ID) values ('4','12','20','4','2');
REM INSERTING into LIFEFIT.DIETA
SET DEFINE OFF;
Insert into LIFEFIT.DIETA (ID,NOMBRE,DESCRIPCION,TIPO) values ('1','Mediterránea','La dieta mediterránea es un patrón alimenticio basado en la cocina tradicional de los países que bordean el Mar Mediterráneo.','Equilibrada');
Insert into LIFEFIT.DIETA (ID,NOMBRE,DESCRIPCION,TIPO) values ('2','Cetogénica','Rica en grasas, moderada en proteínas y baja en carbohidratos. Induce al cuerpo a un estado metabólico llamado cetosis, donde las grasas se convierten en la principal fuente de energía','Pérdida de peso');
Insert into LIFEFIT.DIETA (ID,NOMBRE,DESCRIPCION,TIPO) values ('3','Paleo','Se basa en la alimentación de nuestros antepasados ??paleolíticos. Prioriza alimentos enteros sin procesar como carne magra, pescado, frutas, verduras, frutos secos y semillas. Excluye granos, legumbres, productos lácteos y alimentos procesados.','Restrictiva');
Insert into LIFEFIT.DIETA (ID,NOMBRE,DESCRIPCION,TIPO) values ('4','Flexitariana','Variante vegetariana flexible que permite el consumo ocasional de carne roja, aves o pescado. Enfatiza principalmente en alimentos vegetales.','Principiantes');
Insert into LIFEFIT.DIETA (ID,NOMBRE,DESCRIPCION,TIPO) values ('5','Ayuno Intermitente','Patrón de alimentación que alterna períodos de comida con períodos de ayuno. Existen diferentes métodos, como el ayuno 16/8 o el ayuno 5:2.','Arriesgada');
REM INSERTING into LIFEFIT.EJERCICIO
SET DEFINE OFF;
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('1','Sentadillas','Ejercicio básico para fortalecer las piernas. Párate con los pies separados al ancho de los hombros y baja el cuerpo doblando las rodillas, manteniendo la espalda recta. Luego, vuelve a la posición inicial.','https://www.youtube.com/watch?v=QKKZ9AGYTi4','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('2','Flexiones de Brazos','Ejercicio para fortalecer los músculos del pecho, hombros y tríceps. Apóyate en el suelo con las manos a la altura de los hombros, manteniendo el cuerpo recto y descendiendo hasta que los codos estén en un ángulo de 90 grados','https://www.youtube.com/watch?v=UwRLWMcOdwI','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('3','Plancha Abdominal','Ejercicio de isometría para fortalecer el core. Colócate en posición de plancha, apoyando el peso en los antebrazos y los dedos de los pies, manteniendo el cuerpo recto y los músculos abdominales contraídos.','https://www.youtube.com/watch?v=TvxNkmjdhMM','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('4','Levantamiento de Pesas','Ejercicio de fuerza que se puede adaptar a diferentes grupos musculares. Utiliza pesas adecuadas para tu nivel de fuerza, mantén una postura adecuada y realiza movimientos controlados para evitar lesiones.','https://www.youtube.com/watch?v=qEwKCR5JCog','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('5','Burpees','Ejercicio que combina flexiones, saltos y sentadillas. Comienza en posición de cuclillas, luego apoya las manos en el suelo, estira las piernas hacia atrás realizando una flexión, lleva las piernas de vuelta a la posición de cuclillas y salta','https://www.youtube.com/watch?v=JZQA08SlJnM','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('6','Dominadas','Ejercicio para fortalecer la espalda y los brazos. Agárrate a una barra con las manos separadas al ancho de los hombros y levántate hasta que la barbilla esté por encima de la barra. Luego, baja lentamente hasta la posición inicial.','https://www.youtube.com/watch?v=eGo4IYlbE5g','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('7','Zancadas','Ejercicio para fortalecer las piernas y glúteos. Da un paso adelante con una pierna y flexiona ambas rodillas hasta que las piernas formen ángulos de 90 grados. Luego, vuelve a la posición inicial y repite con la otra pierna.','https://www.youtube.com/watch?v=QOVaHwm-Q6U','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('8','Flexiones Diamante','Variante de las flexiones que enfatiza más en los tríceps. Coloca las manos juntas debajo del pecho, formando un diamante con los pulgares y los índices. Realiza las flexiones manteniendo los codos cerca del cuerpo.','https://www.youtube.com/watch?v=Jx4cT2Ny8Mg','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('9','Elevaciones Laterales','Ejercicio para fortalecer los hombros y los músculos del deltoides medio. De pie, con una mancuerna en cada mano, levanta los brazos hacia los lados hasta que estén paralelos al suelo, luego baja lentamente.','https://www.youtube.com/watch?v=yho0e_9rOwA','S');
Insert into LIFEFIT.EJERCICIO (ID,NOMBRE,DESCRIPCION,VIDEO,PUBLICO) values ('10','Plancha Lateral','Ejercicio para trabajar los músculos abdominales, oblicuos y estabilizadores del core. Acuéstate de lado apoyándote en el antebrazo y el costado del pie, mantén el cuerpo en línea recta y sostén la posición durante el tiempo deseado.','https://www.youtube.com/watch?v=zf0RBDYF8iE','S');
REM INSERTING into LIFEFIT.EJERCICIOS_EXT
SET DEFINE OFF;
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Sentadillas','Ejercicio básico para fortalecer las piernas. Párate con los pies separados al ancho de los hombros y baja el cuerpo doblando las rodillas, manteniendo la espalda recta. Luego, vuelve a la posición inicial.','https://www.youtube.com/watch?v=QKKZ9AGYTi4');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Flexiones de Brazos','Ejercicio para fortalecer los músculos del pecho, hombros y tríceps. Apóyate en el suelo con las manos a la altura de los hombros, manteniendo el cuerpo recto y descendiendo hasta que los codos estén en un ángulo de 90 grados','https://www.youtube.com/watch?v=UwRLWMcOdwI');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Plancha Abdominal','Ejercicio de isometría para fortalecer el core. Colócate en posición de plancha, apoyando el peso en los antebrazos y los dedos de los pies, manteniendo el cuerpo recto y los músculos abdominales contraídos.','https://www.youtube.com/watch?v=TvxNkmjdhMM');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Levantamiento de Pesas','Ejercicio de fuerza que se puede adaptar a diferentes grupos musculares. Utiliza pesas adecuadas para tu nivel de fuerza, mantén una postura adecuada y realiza movimientos controlados para evitar lesiones.','https://www.youtube.com/watch?v=qEwKCR5JCog');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Burpees','Ejercicio que combina flexiones, saltos y sentadillas. Comienza en posición de cuclillas, luego apoya las manos en el suelo, estira las piernas hacia atrás realizando una flexión, lleva las piernas de vuelta a la posición de cuclillas y salta','https://www.youtube.com/watch?v=JZQA08SlJnM');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Dominadas','Ejercicio para fortalecer la espalda y los brazos. Agárrate a una barra con las manos separadas al ancho de los hombros y levántate hasta que la barbilla esté por encima de la barra. Luego, baja lentamente hasta la posición inicial.','https://www.youtube.com/watch?v=eGo4IYlbE5g');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Zancadas','Ejercicio para fortalecer las piernas y glúteos. Da un paso adelante con una pierna y flexiona ambas rodillas hasta que las piernas formen ángulos de 90 grados. Luego, vuelve a la posición inicial y repite con la otra pierna.','https://www.youtube.com/watch?v=QOVaHwm-Q6U');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Flexiones Diamante','Variante de las flexiones que enfatiza más en los tríceps. Coloca las manos juntas debajo del pecho, formando un diamante con los pulgares y los índices. Realiza las flexiones manteniendo los codos cerca del cuerpo.','https://www.youtube.com/watch?v=Jx4cT2Ny8Mg');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Elevaciones Laterales','Ejercicio para fortalecer los hombros y los músculos del deltoides medio. De pie, con una mancuerna en cada mano, levanta los brazos hacia los lados hasta que estén paralelos al suelo, luego baja lentamente.','https://www.youtube.com/watch?v=yho0e_9rOwA');
Insert into LIFEFIT.EJERCICIOS_EXT (NOMBRE,DESCRIPCION,VIDEO) values ('Plancha Lateral','Ejercicio para trabajar los músculos abdominales, oblicuos y estabilizadores del core. Acuéstate de lado apoyándote en el antebrazo y el costado del pie, mantén el cuerpo en línea recta y sostén la posición durante el tiempo deseado.','https://www.youtube.com/watch?v=zf0RBDYF8iE');
REM INSERTING into LIFEFIT.ELEMENTOCALENDARIO
SET DEFINE OFF;
Insert into LIFEFIT.ELEMENTOCALENDARIO (FECHAYHORA,ENTRENADOR_ID) values (to_date('25/08/24','DD/MM/RR'),'31');
Insert into LIFEFIT.ELEMENTOCALENDARIO (FECHAYHORA,ENTRENADOR_ID) values (to_date('29/08/24','DD/MM/RR'),'31');
Insert into LIFEFIT.ELEMENTOCALENDARIO (FECHAYHORA,ENTRENADOR_ID) values (to_date('02/09/24','DD/MM/RR'),'31');
REM INSERTING into LIFEFIT.ENTRENA
SET DEFINE OFF;
Insert into LIFEFIT.ENTRENA (ESPECIALIDAD,ENTRENADOR_ID,CLIENTE_ID) values (null,'31','37');
Insert into LIFEFIT.ENTRENA (ESPECIALIDAD,ENTRENADOR_ID,CLIENTE_ID) values (null,'31','1');
Insert into LIFEFIT.ENTRENA (ESPECIALIDAD,ENTRENADOR_ID,CLIENTE_ID) values (null,'31','2');
Insert into LIFEFIT.ENTRENA (ESPECIALIDAD,ENTRENADOR_ID,CLIENTE_ID) values (null,'31','3');
Insert into LIFEFIT.ENTRENA (ESPECIALIDAD,ENTRENADOR_ID,CLIENTE_ID) values (null,'31','4');
REM INSERTING into LIFEFIT.ENTRENADOR
SET DEFINE OFF;
Insert into LIFEFIT.ENTRENADOR (ID,DISPONIBILIDAD,CENTRO_ID) values ('31',to_date('11/06/24','DD/MM/RR'),'10');
Insert into LIFEFIT.ENTRENADOR (ID,DISPONIBILIDAD,CENTRO_ID) values ('34',to_date('30/05/24','DD/MM/RR'),'10');
Insert into LIFEFIT.ENTRENADOR (ID,DISPONIBILIDAD,CENTRO_ID) values ('35',to_date('10/07/24','DD/MM/RR'),'10');
REM INSERTING into LIFEFIT.GERENTE
SET DEFINE OFF;
Insert into LIFEFIT.GERENTE (ID,DESPACHO,HORARIO,CENTRO_ID) values ('32','Despacho 1',null,'10');
REM INSERTING into LIFEFIT.PLAN
SET DEFINE OFF;
Insert into LIFEFIT.PLAN (INICIO,FIN,RUTINA_ID,ENTRENA_ENTRENADOR_ID,ENTRENA_CLIENTE_ID) values (to_date('02/07/24','DD/MM/RR'),to_date('16/07/24','DD/MM/RR'),'1','31','37');
Insert into LIFEFIT.PLAN (INICIO,FIN,RUTINA_ID,ENTRENA_ENTRENADOR_ID,ENTRENA_CLIENTE_ID) values (to_date('01/07/24','DD/MM/RR'),to_date('01/08/24','DD/MM/RR'),'1','31','1');
Insert into LIFEFIT.PLAN (INICIO,FIN,RUTINA_ID,ENTRENA_ENTRENADOR_ID,ENTRENA_CLIENTE_ID) values (to_date('01/07/24','DD/MM/RR'),to_date('15/07/24','DD/MM/RR'),'2','31','2');
REM INSERTING into LIFEFIT.RUTINA
SET DEFINE OFF;
Insert into LIFEFIT.RUTINA (ID,NOMBRE,DESCRIPCION) values ('1','Piernas','Ejercicios para fortalecer las piernas');
Insert into LIFEFIT.RUTINA (ID,NOMBRE,DESCRIPCION) values ('2','Brazos','Ejercicios para fortalecer los brazos');
REM INSERTING into LIFEFIT.SESION
SET DEFINE OFF;
Insert into LIFEFIT.SESION (INICIO,FIN,PRESENCIAL,PLAN_INICIO,PLAN_RUTINA_ID,DESCRIPCION,DATOS_SALUD,PLAN_CLIENTE_ID,PLAN_ENTRENADOR_ID,VIDEO,ESTADO) values (to_date('03/07/24','DD/MM/RR'),to_date('03/07/24','DD/MM/RR'),'Si',to_date('02/07/24','DD/MM/RR'),'1',null,'Cansado','37','31','https://www.youtube.com/watch?v=i4OJoOsjvFU',null);
Insert into LIFEFIT.SESION (INICIO,FIN,PRESENCIAL,PLAN_INICIO,PLAN_RUTINA_ID,DESCRIPCION,DATOS_SALUD,PLAN_CLIENTE_ID,PLAN_ENTRENADOR_ID,VIDEO,ESTADO) values (to_date('01/07/24','DD/MM/RR'),to_date('01/07/24','DD/MM/RR'),'Si',to_date('01/07/24','DD/MM/RR'),'1',null,null,'1','31',null,null);
Insert into LIFEFIT.SESION (INICIO,FIN,PRESENCIAL,PLAN_INICIO,PLAN_RUTINA_ID,DESCRIPCION,DATOS_SALUD,PLAN_CLIENTE_ID,PLAN_ENTRENADOR_ID,VIDEO,ESTADO) values (to_date('04/07/24','DD/MM/RR'),to_date('03/07/24','DD/MM/RR'),'Si',to_date('02/07/24','DD/MM/RR'),'1',null,'Sano','37','31',null,null);
REM INSERTING into LIFEFIT.USUARIO
SET DEFINE OFF;
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('37','Omar','Errandi','666666666','Calle hola, 1','omar.errandi@gmail.com','Omar33');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('1','Ana','García Pérez','678123456','Calle del Sol, 5','ana.garcia@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('2','José','López Martínez','612987654','Avenida de la Luna, 12','jose.lopez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('3','María','Rodríguez Sánchez','655234567','Calle de la Playa, 8','maria.rodriguez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('4','David','Fernández González','633345678','Avenida del Mar, 20','david.fernandez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('5','Laura','Martín Romero','644456789','Calle de la Montaña, 15','laura.martin@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('6','Carlos','Pérez García','600567890','Avenida del Bosque, 30','carlos.perez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('7','Sofía','González López','677678901','Calle del Río, 25','sofia.gonzalez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('8','Pablo','Romero Martínez','688789012','Avenida de la Ciudad, 18','pablo.romero@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('9','Isabel','Sánchez Rodríguez','655890123','Calle de la Estrella, 10','isabel.sanchez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('10','Adrián','López Fernández','633901234','Avenida del Parque, 22','adrian.lopez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('11','Andrea','Rodríguez García','644012345','Calle del Paseo, 14','andrea.rodriguez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('12','Javier','Fernández Pérez','600123456','Avenida de la Plaza, 28','javier.fernandez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('13','Paula','Martín Sánchez','677234567','Calle de la Fuente, 7','paula.martin@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('14','Alejandro','Pérez Romero','688345678','Avenida del Jardín, 9','alejandro.perez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('15','Elena','González Martínez','655456789','Calle de la Cuesta, 11','elena.gonzalez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('16','Miguel','Romero López','633567890','Avenida de la Colina, 5','miguel.romero@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('17','Valeria','Sánchez García','644678901','Calle del Bosque, 12','valeria.sanchez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('18','Daniel','López Sánchez','600789012','Avenida del Mar, 17','daniel.lopez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('19','Alba','Rodríguez Pérez','677890123','Calle de la Luna, 20','alba.rodriguez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('20','Iván','Fernández Martínez','688901234','Avenida de la Playa, 14','ivan.fernandez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('21','Carmen','Martín García','655012345','Calle de la Montaña, 9','carmen.martin@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('22','Rubén','Pérez Romero','633123456','Avenida del Río, 22','ruben.perez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('23','Sara','González Sánchez','644234567','Calle de la Ciudad, 16','sara.gonzalez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('24','Aitor','Romero López','600345678','Avenida de la Estrella, 8','aitor.romero@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('25','Natalia','López García','677456789','Calle del Parque, 11','natalia.lopez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('26','Hugo','Rodríguez Martínez','688567890','Avenida del Paseo, 19','hugo.rodriguez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('27','Olivia','Fernández Pérez','655678901','Calle de la Plaza, 27','olivia.fernandez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('28','Diego','Martín Sánchez','633789012','Avenida de la Fuente, 6','diego.martin@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('29','Valentina','Pérez Romero','644890123','Calle del Jardín, 8','valentina.perez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('30','Álvaro','González Martínez','600901234','Avenida de la Cuesta, 10','alvaro.gonzalez@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('31','Alberto','Muñoz Romero','612345678','Calle puerta blanca, 33','dare@email.com','EntrenadorDeporte');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('32','Luis','Vega Silva','632547698','Calle Piamonte, 1','luis@email.com','GerentePrueba');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('33','Wan','Vazquez Ramírez','34 612 345 678','Calle Mayor, 123','juan.perez@email.com','Wan33');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('43','Ángel','Martínez Cañete','34 618923487','Calle Mesa, 7','angel.martinez@email.com','Ángel43');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('34','Fernando','López Pérez','666312232456','Calle Guitarra,3','fernando.lopez@email.com','Fernando34');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('36','Ángel','Martínez Cañete','34 618923487','Calle Mesa, 7','angel.martinez@email.com','Ángel36');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('38','Juan Luis','Guerra','663623661','Calle Abajo, 1','juanlu.guerra@email.com',null);
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('39','Ángel','Martínez Cañete','34 618923487','Calle Mesa, 7','angel.martinez@email.com','Ángel39');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('41','Ángel','Martínez Cañete','34 618923487','Calle Mesa, 7','angel.martinez@email.com','Ángel41');
Insert into LIFEFIT.USUARIO (ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values ('35','Alfredo','Muñoz Álvarez','34 673345897','Calle Menor, 321','alfredo.munioz@email.com','Alfredo35');
--------------------------------------------------------
--  DDL for Index CENTRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."CENTRO_PK" ON "LIFEFIT"."CENTRO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index CITA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."CITA_PK" ON "LIFEFIT"."CITA" ("FECHAYHORA", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."CLIENTE_PK" ON "LIFEFIT"."CLIENTE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index CONFORMAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."CONFORMAN_PK" ON "LIFEFIT"."CONFORMAN" ("EJERCICIO_ID", "RUTINA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index DIETA_NOMBRE_UN
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."DIETA_NOMBRE_UN" ON "LIFEFIT"."DIETA" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index DIETA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."DIETA_PK" ON "LIFEFIT"."DIETA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index EJERCICIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."EJERCICIO_PK" ON "LIFEFIT"."EJERCICIO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index ELEMENTOCALENDARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."ELEMENTOCALENDARIO_PK" ON "LIFEFIT"."ELEMENTOCALENDARIO" ("FECHAYHORA", "ENTRENADOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index ENTRENADOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."ENTRENADOR_PK" ON "LIFEFIT"."ENTRENADOR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index ENTRENA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."ENTRENA_PK" ON "LIFEFIT"."ENTRENA" ("ENTRENADOR_ID", "CLIENTE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index GERENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."GERENTE_PK" ON "LIFEFIT"."GERENTE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index GERENTE__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."GERENTE__IDX" ON "LIFEFIT"."GERENTE" ("CENTRO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index PLAN_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."PLAN_PK1" ON "LIFEFIT"."PLAN" ("INICIO", "RUTINA_ID", "ENTRENA_CLIENTE_ID", "ENTRENA_ENTRENADOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" ;
--------------------------------------------------------
--  DDL for Index RUTINA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."RUTINA_PK" ON "LIFEFIT"."RUTINA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index SESION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."SESION_PK" ON "LIFEFIT"."SESION" ("INICIO", "PLAN_INICIO", "PLAN_RUTINA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."USUARIO_PK" ON "LIFEFIT"."USUARIO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index PLAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEFIT"."PLAN_PK" ON "LIFEFIT"."PLAN" ("INICIO", "RUTINA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index UPPER_APELLIDOS_IDX
--------------------------------------------------------

  CREATE INDEX "LIFEFIT"."UPPER_APELLIDOS_IDX" ON "LIFEFIT"."USUARIO" ("APELLIDOS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index CORREO_IDX
--------------------------------------------------------

  CREATE INDEX "LIFEFIT"."CORREO_IDX" ON "LIFEFIT"."USUARIO" ("CORREOE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index CENTRO_ID_IDX
--------------------------------------------------------

  CREATE BITMAP INDEX "LIFEFIT"."CENTRO_ID_IDX" ON "LIFEFIT"."CLIENTE" ("CENTRO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index TELEFONO_IDX
--------------------------------------------------------

  CREATE INDEX "LIFEFIT"."TELEFONO_IDX" ON "LIFEFIT"."USUARIO" ("TELEFONO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Index NOMBRE_IDX
--------------------------------------------------------

  CREATE INDEX "LIFEFIT"."NOMBRE_IDX" ON "LIFEFIT"."USUARIO" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_INDICE" ;
--------------------------------------------------------
--  DDL for Trigger TR_EJERCICIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LIFEFIT"."TR_EJERCICIOS" 
before insert on EJERCICIO for each row
begin
if :new.ID is null then
 :new.ID := SEQ_EJERCICIOS.NEXTVAL;
end if;
END tr_EJERCICIOS;
/
ALTER TRIGGER "LIFEFIT"."TR_EJERCICIOS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_INS_UPD_DEL_V_CLIENTE_CITAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LIFEFIT"."TRG_INS_UPD_DEL_V_CLIENTE_CITAS" 
INSTEAD OF INSERT OR UPDATE OR DELETE ON LIFEFIT.CLIENTE_CITAS_VIEW
FOR EACH ROW
BEGIN
  -- Manejar inserciones
  IF INSERTING THEN
  
  INSERT INTO LIFEFIT.ELEMENTOCALENDARIO (FECHAYHORA, ENTRENADOR_ID)
    VALUES (:NEW.FECHA_CITA, :NEW.ENTRENADOR_ID);
  -- Inserta en la tabla CITA
    INSERT INTO LIFEFIT.CITA ( FECHAYHORA, ID, MODALIDAD, CLIENTE_ID, ESTADO)
    VALUES (:NEW.FECHA_CITA, :NEW.ENTRENADOR_ID, :NEW.MODALIDAD, (SELECT ID FROM LIFEFIT.USUARIO WHERE UPPER(USUARIOORACLE) = USER), 'pendiente');

    

  -- Manejar actualizaciones
  ELSIF UPDATING THEN
    UPDATE LIFEFIT.CITA
    SET MODALIDAD = :NEW.MODALIDAD,
        ESTADO = :NEW.ESTADO
    WHERE FECHAYHORA = :OLD.FECHA_CITA;

    UPDATE LIFEFIT.ELEMENTOCALENDARIO
    SET ENTRENADOR_ID = :NEW.ENTRENADOR_ID
    WHERE FECHAYHORA = :OLD.FECHA_CITA;

  -- Manejar eliminaciones
  ELSIF DELETING THEN
    DELETE FROM LIFEFIT.CITA
    WHERE FECHAYHORA = :OLD.FECHA_CITA;
    DELETE FROM LIFEFIT.ELEMENTOCALENDARIO
    WHERE FECHAYHORA = :OLD.FECHA_CITA;
  END IF;
END;
/
ALTER TRIGGER "LIFEFIT"."TRG_INS_UPD_DEL_V_CLIENTE_CITAS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_INS_V_SESIONES_CLIENTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LIFEFIT"."TRG_INS_V_SESIONES_CLIENTE" 
INSTEAD OF INSERT ON LIFEFIT.V_SESIONES_CLIENTE
FOR EACH ROW
BEGIN
  -- Inserta en la tabla SESION
  INSERT INTO LIFEFIT.SESION (INICIO, FIN, PRESENCIAL, PLAN_INICIO, PLAN_RUTINA_ID, DESCRIPCION, VIDEO, DATOS_SALUD, PLAN_CLIENTE_ID, PLAN_ENTRENADOR_ID)
  VALUES (:NEW.INICIO, :NEW.FIN, :NEW.PRESENCIAL, :NEW.PLAN_INICIO, :NEW.PLAN_RUTINA_ID, :NEW.DESCRIPCION, :NEW.VIDEO, :NEW.DATOS_SALUD, :NEW.PLAN_CLIENTE_ID, :NEW.PLAN_ENTRENADOR_ID);
END;
/
ALTER TRIGGER "LIFEFIT"."TRG_INS_V_SESIONES_CLIENTE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_UPD_ENTRENADOR_CITAS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LIFEFIT"."TRG_UPD_ENTRENADOR_CITAS_VIEW" 
INSTEAD OF  UPDATE OR INSERT OR DELETE  ON LIFEFIT.ENTRENADOR_CITAS_VIEW
FOR EACH ROW
BEGIN


  -- Manejar inserciones
  IF INSERTING THEN
  
    INSERT INTO LIFEFIT.ELEMENTOCALENDARIO (FECHAYHORA, ENTRENADOR_ID)
    VALUES (:NEW.FECHA_CITA, (SELECT ID FROM LIFEFIT.USUARIO WHERE UPPER(USUARIOORACLE) = USER));
  -- Inserta en la tabla CITA
    INSERT INTO LIFEFIT.CITA ( FECHAYHORA, ID, MODALIDAD, CLIENTE_ID, ESTADO)
    VALUES (:NEW.FECHA_CITA, (select id from usuario where upper(usuariooracle)=USER), :NEW.MODALIDAD, :NEW.CLIENTE_ID, 'confirmada');

    

  -- Manejar actualizaciones
  ELSIF UPDATING THEN
    UPDATE LIFEFIT.CITA
    SET   ESTADO = :NEW.ESTADO
    WHERE FECHAYHORA = :OLD.FECHA_CITA;

  -- Manejar eliminaciones
  ELSIF DELETING THEN
    DELETE FROM LIFEFIT.CITA
    WHERE FECHAYHORA = :OLD.FECHA_CITA;
    DELETE FROM LIFEFIT.ELEMENTOCALENDARIO
    WHERE FECHAYHORA = :OLD.FECHA_CITA;
  END IF;
END;
/
ALTER TRIGGER "LIFEFIT"."TRG_UPD_ENTRENADOR_CITAS_VIEW" ENABLE;
--------------------------------------------------------
--  DDL for Package BASE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LIFEFIT"."BASE" AS 

/* Declaración de excepciones */
  EXCEPTION_CREACION EXCEPTION;
  EXCEPTION_MODIFICACION EXCEPTION;
  EXCEPTION_ELIMINACION EXCEPTION;
  EXCEPTION_LECTURA EXCEPTION;

--Tipo de registro que almacena todos los campos relacionados con el cliente
TYPE TCLIENTE IS RECORD (
    NOMBRE USUARIO.NOMBRE%TYPE,
    APELLIDOS USUARIO.APELLIDOS%TYPE,
    TELEFONO USUARIO.TELEFONO%TYPE,
    DIRECCION USUARIO.DIRECCION%TYPE,
    CORREOE USUARIO.CORREOE%TYPE,
    OBJETIVOS CLIENTE.OBJETIVO%TYPE,
    DIETA CLIENTE.DIETA_ID%TYPE,
    PREFERENCIAS CLIENTE.PREFERENCIAS%TYPE,
    CENTRO CLIENTE.CENTRO_ID%TYPE
);

--Declaración del procedimiento CREA_CLIENTE
PROCEDURE CREA_CLIENTE(
    P_DATOS IN TCLIENTE,
    P_USERPASS IN VARCHAR2,
    P_USUARIO OUT USUARIO%ROWTYPE,
    P_CLIENTE OUT CLIENTE%ROWTYPE
) ;

----Tipo de registro que almacena todos los campos relacionados con el entrenador
TYPE TENTRENADOR IS RECORD (
    NOMBRE USUARIO.NOMBRE%TYPE,
    APELLIDOS USUARIO.APELLIDOS%TYPE,
    TELEFONO USUARIO.TELEFONO%TYPE,
    DIRECCION USUARIO.DIRECCION%TYPE,
    CORREOE USUARIO.CORREOE%TYPE,
    DISPONIBILIDAD ENTRENADOR.DISPONIBILIDAD%TYPE,
    CENTRO ENTRENADOR.CENTRO_ID%TYPE
);

--Declaración del procedimiento CREA_ENTRENADOR
PROCEDURE CREA_ENTRENADOR(
    P_DATOS IN TENTRENADOR,
    P_USERPASS IN VARCHAR2,
    P_USUARIO OUT USUARIO%ROWTYPE,
    P_ENTRENADOR OUT ENTRENADOR%ROWTYPE
) ;

--Tipo de registro que almacena todos los campos relacionados con el gerente
TYPE TGERENTE IS RECORD (
    NOMBRE USUARIO.NOMBRE%TYPE,
    APELLIDOS USUARIO.APELLIDOS%TYPE,
    TELEFONO USUARIO.TELEFONO%TYPE,
    DIRECCION USUARIO.DIRECCION%TYPE,
    CORREOE USUARIO.CORREOE%TYPE,
    DESPACHO GERENTE.DESPACHO%TYPE,
    HORARIO GERENTE.HORARIO%TYPE,
    CENTRO GERENTE.CENTRO_ID%TYPE
);

--Declaración del procedimiento CREA_GERENTE
PROCEDURE CREA_GERENTE(
    P_DATOS IN TGERENTE,
    P_USERPASS IN VARCHAR2,
    P_USUARIO OUT USUARIO%ROWTYPE,
    P_GERENTE OUT GERENTE%ROWTYPE
);

PROCEDURE ELIMINA_USER(P_ID USUARIO.ID%TYPE);

PROCEDURE SENTENCIAS(SENTENCIA VARCHAR2);

--Declaración del procedimiento ELIMINA_CLIENTE
PROCEDURE ELIMINA_CLIENTE(P_ID USUARIO.ID%TYPE);

--Declaración del procedimineto ELIMINA_GERENTE
PROCEDURE ELIMINA_GERENTE(P_ID USUARIO.ID%TYPE);

--Declaración del procedimiento ELIMINA_ENTRENADOR
PROCEDURE ELIMINA_ENTRENADOR(P_ID USUARIO.ID%TYPE);

--Declaración del procedimiento ELIMINA_CENTRO
PROCEDURE ELIMINA_CENTRO(P_ID CENTRO.ID%TYPE);


END BASE;

/
--------------------------------------------------------
--  DDL for Package ICALC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LIFEFIT"."ICALC" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END ICALC;

/
--------------------------------------------------------
--  DDL for Package Body BASE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "LIFEFIT"."BASE" AS

PROCEDURE SENTENCIAS(SENTENCIA VARCHAR2) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE(sentencia);
    execute immediate sentencia;
    
     -- Paso 2: Confirmar la transacción automáticamente
    COMMIT;
END SENTENCIAS;

PROCEDURE CREA_CLIENTE(
    P_DATOS IN TCLIENTE,
    P_USERPASS IN VARCHAR2,
    P_USUARIO OUT USUARIO%ROWTYPE,
    P_CLIENTE OUT CLIENTE%ROWTYPE
) AS
    v_nombre_oracle VARCHAR2(50);
    v_nuevo_id number;
    v_sentencia VARCHAR2(500);
    v_savepoint varchar2(30) := 'SP_CREAR_CLIENTE';
    
    -- Procedimiento autónomo para crear el usuario Oracle
    PROCEDURE CREAR_USUARIO_ORACLE (
        P_NOMBRE_ORACLE IN VARCHAR2,
        P_USERPASS IN VARCHAR2
    ) IS
        PRAGMA AUTONOMOUS_TRANSACTION;
        v_sentencia VARCHAR2(500);
    BEGIN
        v_sentencia := 'CREATE USER ' || P_NOMBRE_ORACLE || ' IDENTIFIED BY ' || P_USERPASS;
        SENTENCIAS(v_sentencia);
        
        --FALTA ASIGNAR ROL CLIENTE Y SINONIMOS Y VISTAS NECESARIOS
        
        v_sentencia := 'GRANT cliente to ' || P_NOMBRE_ORACLE;
        SENTENCIAS(v_sentencia);

        v_sentencia := 'CREATE SYNONYM PERFIL FOR LIFEFIT.V_PERFIL_CLIENTE';
        SENTENCIAS(v_sentencia);

        v_sentencia := 'CREATE SYNONYM SESIONES FOR LIFEFIT.V_SESIONES_CLIENTE';
        SENTENCIAS(v_sentencia);
        
        v_sentencia := 'CREATE SYNONYM CITAS FOR LIFEFIT.CLIENTE_CITAS_VIEW';
        SENTENCIAS(v_sentencia);

        --no sería necesario porque se hace en cada llamada a SENTENCIAS(): COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END CREAR_USUARIO_ORACLE;
    
BEGIN

    -- Crea el savepoint
    SAVEPOINT SP_CREAR_CLIENTE;
    
    --Almacenamos en la variable v_nuevo_id_usuario el id del último usuario introducido + 1 para obtener el id del nuevo usuario
    select max(id)+1 into v_nuevo_id from lifefit.USUARIO;
    
    --Almacenamos en la variable v_nombre_oracle la concatenación del nombre y el id del usuario
    v_nombre_oracle := P_DATOS.NOMBRE||v_nuevo_id;
    
    --Crea el usuario en la tabla USUARIO
    insert into lifefit.USUARIO(ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values (v_nuevo_id,P_DATOS.NOMBRE,P_DATOS.APELLIDOS,P_DATOS.TELEFONO,P_DATOS.DIRECCION,P_DATOS.CORREOE,v_nombre_oracle);
    --Confirmamos la transaccion
    COMMIT;
    
    --Introducimos en la variable P_USUARIO el valor de ID que introducimos en la nueva fila de la tabla usuario
    select * into P_USUARIO from lifefit.usuario where id = v_nuevo_id;
    
    --Crea el usuario en la tabla CLIENTE
    insert into lifefit.CLIENTE(ID,OBJETIVO,PREFERENCIAS,DIETA_ID,CENTRO_ID) values (v_nuevo_id,P_DATOS.OBJETIVOS,P_DATOS.PREFERENCIAS,P_DATOS.DIETA,P_DATOS.CENTRO);
    --Confirmamos la transaccion
    COMMIT;
    
    --Introducimos la variable P_CLIENTE el valor de ID que introducimos en la nueva fila de la tabla cliente
    select * into P_CLIENTE from lifefit.cliente where id = v_nuevo_id;
    --DBMS_OUTPUT.PUT_LINE(P_CLIENTE.objetivo);
    
    -- Llamamos al procedimiento autónomo para crear el usuario Oracle
        CREAR_USUARIO_ORACLE(v_nombre_oracle, P_USERPASS);

    EXCEPTION
        WHEN OTHERS THEN
            -- Si hay algún error, revertimos hasta el savepoint
            ROLLBACK TO SAVEPOINT v_savepoint;
            RAISE;
    
    
END CREA_CLIENTE;

PROCEDURE CREA_ENTRENADOR(
    P_DATOS IN TENTRENADOR,
    P_USERPASS IN VARCHAR2,
    P_USUARIO OUT USUARIO%ROWTYPE,
    P_ENTRENADOR OUT ENTRENADOR%ROWTYPE
) AS
    v_nombre_oracle VARCHAR2(50);
    v_nuevo_id number;
    v_sentencia VARCHAR2(500);
    v_savepoint VARCHAR2(30) := 'SP_CREAR_ENTRENADOR';

    -- Procedimiento autónomo para crear el usuario Oracle
    PROCEDURE CREAR_USUARIO_ORACLE (
        P_NOMBRE_ORACLE IN VARCHAR2,
        P_USERPASS IN VARCHAR2
    ) IS
        PRAGMA AUTONOMOUS_TRANSACTION;
        v_sentencia VARCHAR2(500);
    BEGIN
        v_sentencia := 'CREATE USER ' || P_NOMBRE_ORACLE || ' IDENTIFIED BY ' || P_USERPASS;
        SENTENCIAS(v_sentencia);

        v_sentencia := 'GRANT entrenador to ' || P_NOMBRE_ORACLE;
        SENTENCIAS(v_sentencia);

        v_sentencia := 'CREATE SYNONYM EJERCICIOS FOR LIFEFIT.EJERCICIO';
        SENTENCIAS(v_sentencia);
        
        v_sentencia := 'CREATE SYNONYM VISTA_EJERCICIOS FOR LIFEFIT.VEJERCICIO';
        SENTENCIAS(v_sentencia);

        v_sentencia := 'CREATE SYNONYM ASIGNACION_EJERCICIOS_RUTINAS FOR LIFEFIT.CONFORMAN';
        SENTENCIAS(v_sentencia);

        v_sentencia := 'CREATE SYNONYM ASIGNACION_PLAN_CLIENTES FOR LIFEFIT.V_ASIGNACION_PLAN_ENTRENADOR';
        SENTENCIAS(v_sentencia);
        
        v_sentencia := 'CREATE SYNONYM SEGUIMIENTO FOR LIFEFIT.V_SEGUIMIENTO_PLAN_ENTRENADOR';
        SENTENCIAS(v_sentencia);
        
        v_sentencia := 'CREATE SYNONYM CITAS FOR LIFEFIT.ENTRENADOR_CITAS_VIEW';
        SENTENCIAS(v_sentencia);

        --no sería necesario porque se hace en cada llamada a SENTENCIAS: COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END CREAR_USUARIO_ORACLE;

BEGIN
    -- Crea el savepoint
    SAVEPOINT SP_CREAR_ENTRENADOR;

        -- Almacenamos en la variable v_nuevo_id_usuario el id del último usuario introducido + 1 para obtener el id del nuevo usuario
        select max(id)+1 into v_nuevo_id from lifefit.USUARIO;
        
        -- Almacenamos en la variable v_nombre_oracle la concatenación del nombre y el id del usuario
        v_nombre_oracle := P_DATOS.NOMBRE || v_nuevo_id;

        -- Crea el usuario en la tabla USUARIO
        insert into lifefit.USUARIO(ID, NOMBRE, APELLIDOS, TELEFONO, DIRECCION, CORREOE, USUARIOORACLE) 
        values (v_nuevo_id, P_DATOS.NOMBRE, P_DATOS.APELLIDOS, P_DATOS.TELEFONO, P_DATOS.DIRECCION, P_DATOS.CORREOE, v_nombre_oracle);
        -- Confirmar la transacción
        COMMIT;

        -- Introducimos en la variable P_USUARIO el valor de ID que introducimos en la nueva fila de la tabla usuario
        select * into P_USUARIO from lifefit.usuario where id = v_nuevo_id;

        -- Crea el usuario en la tabla ENTRENADOR
        insert into lifefit.ENTRENADOR(ID, DISPONIBILIDAD, CENTRO_ID) 
        values (v_nuevo_id, P_DATOS.DISPONIBILIDAD, P_DATOS.CENTRO);
        -- Confirmar la transacción
        COMMIT;

        -- Introducimos la variable P_ENTRENADOR el valor de ID que introducimos en la nueva fila de la tabla entrenador
        select * into P_ENTRENADOR from lifefit.entrenador where id = v_nuevo_id;

        -- Llamamos al procedimiento autónomo para crear el usuario Oracle
        CREAR_USUARIO_ORACLE(v_nombre_oracle, P_USERPASS);

    EXCEPTION
        WHEN OTHERS THEN
            -- Si hay algún error, revertimos hasta el savepoint
            ROLLBACK TO SAVEPOINT v_savepoint;
            RAISE;

END CREA_ENTRENADOR;


PROCEDURE CREA_GERENTE(
    P_DATOS IN TGERENTE,
    P_USERPASS IN VARCHAR2,
    P_USUARIO OUT USUARIO%ROWTYPE,
    P_GERENTE OUT GERENTE%ROWTYPE
) AS
    v_nombre_oracle VARCHAR2(50);
    v_nuevo_id number;
    v_sentencia VARCHAR2(500);
    v_savepoint VARCHAR2(30) := 'SP_CREAR_GERENTE';
    
    -- Procedimiento autónomo para crear el usuario Oracle
    PROCEDURE CREAR_USUARIO_ORACLE (
        P_NOMBRE_ORACLE IN VARCHAR2,
        P_USERPASS IN VARCHAR2
    ) IS
        PRAGMA AUTONOMOUS_TRANSACTION;
        v_sentencia VARCHAR2(500);
    BEGIN
        v_sentencia := 'CREATE USER ' || P_NOMBRE_ORACLE || ' IDENTIFIED BY ' || P_USERPASS;
        SENTENCIAS(v_sentencia);
    
        v_sentencia := 'GRANT gerente to ' ||v_nombre_oracle;
        SENTENCIAS(v_sentencia);
        
        v_sentencia := 'CREATE SYNONYM ASIGNACION_ENTRENADORES_CLIENTES FOR LIFEFIT.ENTRENA';
        SENTENCIAS(v_sentencia);            

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END CREAR_USUARIO_ORACLE;
BEGIN
    
    -- Crea el savepoint
    SAVEPOINT SP_CREAR_GERENTE;
    
    --Almacenamos en la variable v_nuevo_id_usuario el id del último usuario introducido + 1 para obtener el id del nuevo usuario
    select max(id)+1 into v_nuevo_id from lifefit.USUARIO;
    
    --Almacenamos en la variable v_nombre_oracle la concatenación del nombre y el id del usuario
    v_nombre_oracle := P_DATOS.NOMBRE||v_nuevo_id;
    
    --Crea el usuario en la tabla USUARIO
    insert into lifefit.USUARIO(ID,NOMBRE,APELLIDOS,TELEFONO,DIRECCION,CORREOE,USUARIOORACLE) values (v_nuevo_id,P_DATOS.NOMBRE,P_DATOS.APELLIDOS,P_DATOS.TELEFONO,P_DATOS.DIRECCION,P_DATOS.CORREOE,v_nombre_oracle);
    --Confirmamos la transaccion
    COMMIT;
    
    --Introducimos en la variable P_USUARIO el valor de ID que introducimos en la nueva fila de la tabla usuario
    select * into P_USUARIO from lifefit.usuario where id = v_nuevo_id;
    
    --Crea el usuario en la tabla ENTRENADOR
    insert into lifefit.GERENTE(ID,DESPACHO,HORARIO,CENTRO_ID) values (v_nuevo_id,P_DATOS.DESPACHO,P_DATOS.HORARIO,P_DATOS.CENTRO);
    --Confirmamos la transaccion
    COMMIT;
    
    --Introducimos la variable P_CLIENTE el valor de ID que introducimos en la nueva fila de la tabla cliente
    select * into P_GERENTE from lifefit.gerente where id = v_nuevo_id;
    --DBMS_OUTPUT.PUT_LINE(P_GERENTE.DESPACHO);
    
    CREAR_USUARIO_ORACLE(v_nombre_oracle,P_USERPASS);
    
    EXCEPTION
        WHEN OTHERS THEN
            -- Si hay algún error, revertimos hasta el savepoint
            ROLLBACK TO SAVEPOINT v_savepoint;
            RAISE;
    
END CREA_GERENTE;


PROCEDURE ELIMINA_USER(P_ID USUARIO.ID%TYPE) AS
    sentencia VARCHAR2(500);
    usuario VARCHAR2(500);
BEGIN
    -- Paso 1: Actualizar el campo UsuarioOracle a NULL
    select usuariooracle into usuario from lifefit.usuario where lifefit.usuario.id = P_ID;
    UPDATE USUARIO
    SET USUARIOORACLE = NULL
    WHERE ID = P_ID;
    COMMIT; -- Confirmar la transacción

   
    sentencia := 'DROP USER ' || usuario || ' cascade';
    SENTENCIAS(sentencia);
   
   
   EXCEPTION
    WHEN OTHERS THEN
        -- Manejo de excepciones, por si ocurre un error
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error al intentar eliminar la infraestructura del usuario ' || P_ID || ': ' || SQLERRM);
 
END ELIMINA_USER;


PROCEDURE ELIMINA_CLIENTE(P_ID USUARIO.ID%TYPE) AS
    usuario VARCHAR2(500);
    comprobar NUMBER;

BEGIN
    
    savepoint SP_ELIMINA_CLIENTE;

    -- Verificar si el ID es de un cliente
    SELECT COUNT(*)
    INTO comprobar
    FROM CLIENTE
    WHERE id = P_ID;

    IF comprobar = 0 THEN
        -- Si no existe, lanzar una excepción o manejar el error
        RAISE_APPLICATION_ERROR(-20001, 'El ID proporcionado no corresponde a un cliente.');
    END IF;
    
    -- Continuar con la eliminación del usuario
    ELIMINA_USER(P_ID);
    
    DELETE FROM CITA WHERE CLIENTE_ID = P_ID;
    DELETE FROM ELEMENTOCALENDARIO
    WHERE FechaYHora IN (
        SELECT FechaYHora
        FROM CITA
        WHERE CLIENTE_ID = P_ID
    );
    DELETE FROM SESION WHERE PLAN_CLIENTE_ID = P_ID;
    DELETE FROM PLAN WHERE ENTRENA_CLIENTE_ID = P_ID;
    DELETE FROM ENTRENA WHERE CLIENTE_ID = P_ID;
    DELETE FROM CLIENTE WHERE ID = P_ID;
    DELETE FROM USUARIO WHERE ID = P_ID;

    --Confirmamos las transacciones
    COMMIT;
    
EXCEPTION
    WHEN OTHERS THEN
        -- Manejo de excepciones, por si ocurre un error
        ROLLBACK to SP_ELIMINA_CLIENTE;
        DBMS_OUTPUT.PUT_LINE('Error al intentar eliminar la infraestructura del usuario ' || P_ID || ': ' || SQLERRM);
END ELIMINA_CLIENTE;


PROCEDURE ELIMINA_GERENTE(P_ID USUARIO.ID%TYPE) AS
   usuario VARCHAR2(500);
   comprobar NUMBER;

BEGIN

    savepoint SP_ELIMINA_GERENTE;

    -- Verificar si el ID es de un gerente
    SELECT COUNT(*)
    INTO comprobar
    FROM GERENTE
    WHERE id = P_ID;

    IF comprobar = 0 THEN
        -- Si no existe, lanzar una excepción o manejar el error
        RAISE_APPLICATION_ERROR(-20001, 'El ID proporcionado no corresponde a un gerente.');
    END IF;
    
    ELIMINA_USER(P_ID);

    DELETE FROM GERENTE WHERE ID = P_ID;    
    DELETE FROM USUARIO WHERE ID = P_ID;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Manejo de excepciones, por si ocurre un error
        ROLLBACK to SP_ELIMINA_GERENTE;
        DBMS_OUTPUT.PUT_LINE('Error al intentar eliminar la infraestructura del usuario ' || P_ID || ': ' || SQLERRM);
END ELIMINA_GERENTE;


PROCEDURE ELIMINA_ENTRENADOR(P_ID USUARIO.ID%TYPE)AS
   usuario VARCHAR2(500);
   entrenador_existente NUMBER;
BEGIN

    savepoint SP_ELIMINA_ENTRENADOR;
    
    -- Verificar si el ID es de un entrenador
    SELECT COUNT(*)
    INTO entrenador_existente
    FROM ENTRENADOR
    WHERE id = P_ID;

    IF entrenador_existente = 0 THEN
        -- Si no existe, lanzar una excepción o manejar el error
        RAISE_APPLICATION_ERROR(-20001, 'El ID proporcionado no corresponde a un entrenador.');
    END IF;
    
    ELIMINA_USER(P_ID);

    DELETE FROM SESION WHERE PLAN_ENTRENADOR_ID = P_ID;
    DELETE FROM PLAN WHERE ENTRENA_ENTRENADOR_ID = P_ID;
    DELETE FROM CITA
    WHERE FechaYHora IN (
        SELECT FechaYHora
        FROM ELEMENTOCALENDARIO
        WHERE ENTRENADOR_ID = P_ID
    );
    DELETE FROM ELEMENTOCALENDARIO WHERE ENTRENADOR_ID = P_ID;
    DELETE FROM ENTRENA WHERE ENTRENADOR_ID = P_ID;
    DELETE FROM ENTRENADOR WHERE ID = P_ID;
    DELETE FROM USUARIO WHERE ID = P_ID;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Manejo de excepciones, por si ocurre un error
        ROLLBACK to SP_ELIMINA_ENTRENADOR;
        DBMS_OUTPUT.PUT_LINE('Error al intentar eliminar la infraestructura del usuario ' || P_ID || ': ' || SQLERRM);
END ELIMINA_ENTRENADOR;


PROCEDURE ELIMINA_CENTRO(P_ID CENTRO.ID%TYPE) IS
   
    BEGIN
    
        SAVEPOINT ELIMINA_CENTRO_SAVEPOINT;        
        
        -- Llamada al procedimiento para eliminar clientes
        FOR C IN (SELECT ID FROM CLIENTE WHERE CENTRO_ID = P_ID) LOOP
            BEGIN
                ELIMINA_CLIENTE(C.ID);
            EXCEPTION
                WHEN OTHERS THEN
                    ROLLBACK TO ELIMINA_CENTRO_SAVEPOINT;
                    RAISE EXCEPTION_ELIMINACION;
            END;
        END LOOP;
        
        -- Llamada al procedimiento para eliminar gerentes
        FOR G IN (SELECT ID FROM GERENTE WHERE CENTRO_ID = P_ID) LOOP
            BEGIN
                ELIMINA_GERENTE(G.ID);
            EXCEPTION
                WHEN OTHERS THEN
                    ROLLBACK TO ELIMINA_CENTRO_SAVEPOINT;
                    RAISE EXCEPTION_ELIMINACION;
            END;
        END LOOP;
        
        -- Llamada al procedimiento para eliminar entrenadores
        FOR E IN (SELECT ID FROM ENTRENADOR WHERE CENTRO_ID = P_ID) LOOP
            BEGIN
                ELIMINA_ENTRENADOR(E.ID);
            EXCEPTION
                WHEN OTHERS THEN
                    ROLLBACK TO ELIMINA_CENTRO_SAVEPOINT;
                    RAISE EXCEPTION_ELIMINACION;
            END;
        END LOOP;
        
        DELETE FROM CENTRO WHERE ID = P_ID;
        COMMIT;
        
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK TO SAVEPOINT ELIMINA_CENTRO_SAVEPOINT;
        RAISE;
        
END ELIMINA_CENTRO;


END BASE;

/
--------------------------------------------------------
--  DDL for Function VPD_FUNCTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "LIFEFIT"."VPD_FUNCTION" (p_schema varchar2, p_obj varchar2)
  Return varchar2
is
  Vusuario VARCHAR2(100);
Begin
  Vusuario := SYS_CONTEXT('userenv', 'SESSION_USER');
  return 'UPPER(usuariooracle) = ''' || Vusuario || '''';
End;

/
--------------------------------------------------------
--  DDL for Synonymn ASIGNACION_ENTRENADORES_CLIENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE SYNONYM "LIFEFIT"."ASIGNACION_ENTRENADORES_CLIENTES" FOR "LIFEFIT"."ENTRENA";
--------------------------------------------------------
--  DDL for Synonymn CITAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE SYNONYM "LIFEFIT"."CITAS" FOR "LIFEFIT"."CLIENTE_CITAS_VIEW";
--------------------------------------------------------
--  DDL for Synonymn PERFIL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE SYNONYM "LIFEFIT"."PERFIL" FOR "LIFEFIT"."V_PERFIL_CLIENTE";
--------------------------------------------------------
--  DDL for Synonymn SESIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE SYNONYM "LIFEFIT"."SESIONES" FOR "LIFEFIT"."V_SESIONES_CLIENTE";
--------------------------------------------------------
--  Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."CITA" ADD CONSTRAINT "CHK_ESTADO" CHECK (estado IN ('confirmada', 'pendiente','anulada')) ENABLE;
  ALTER TABLE "LIFEFIT"."CITA" MODIFY ("FECHAYHORA" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CITA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CITA" MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CITA" ADD CONSTRAINT "CITA_PK" PRIMARY KEY ("FECHAYHORA", "ID")
  USING INDEX "LIFEFIT"."CITA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CONFORMAN
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."CONFORMAN" MODIFY ("EJERCICIO_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CONFORMAN" MODIFY ("RUTINA_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CONFORMAN" ADD CONSTRAINT "CONFORMAN_PK" PRIMARY KEY ("EJERCICIO_ID", "RUTINA_ID")
  USING INDEX "LIFEFIT"."CONFORMAN_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SESION
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."SESION" MODIFY ("INICIO" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."SESION" MODIFY ("PLAN_INICIO" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."SESION" MODIFY ("PLAN_RUTINA_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."SESION" MODIFY ("PRESENCIAL" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."SESION" ADD CONSTRAINT "SESION_PK" PRIMARY KEY ("PLAN_INICIO", "PLAN_RUTINA_ID", "INICIO")
  USING INDEX "LIFEFIT"."SESION_PK"  ENABLE;
  ALTER TABLE "LIFEFIT"."SESION" MODIFY ("PLAN_CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."SESION" MODIFY ("PLAN_ENTRENADOR_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."SESION" ADD CONSTRAINT "SESION_ESTADO_CHK" CHECK (ESTADO IN ('HECHO', 'PARCIAL', 'SALTADO')) ENABLE;
--------------------------------------------------------
--  Constraints for Table CENTRO
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."CENTRO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CENTRO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CENTRO" ADD CONSTRAINT "CENTRO_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."CENTRO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EJERCICIO
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."EJERCICIO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."EJERCICIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."EJERCICIO" ADD CONSTRAINT "EJERCICIO_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."EJERCICIO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RUTINA
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."RUTINA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."RUTINA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."RUTINA" ADD CONSTRAINT "RUTINA_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."RUTINA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."CLIENTE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CLIENTE" MODIFY ("OBJETIVO" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CLIENTE" MODIFY ("CENTRO_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."CLIENTE" ADD CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."CLIENTE_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIETA
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."DIETA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."DIETA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."DIETA" ADD CONSTRAINT "DIETA_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."DIETA_PK"  ENABLE;
  ALTER TABLE "LIFEFIT"."DIETA" ADD CONSTRAINT "DIETA_NOMBRE_UN" UNIQUE ("NOMBRE")
  USING INDEX "LIFEFIT"."DIETA_NOMBRE_UN"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ELEMENTOCALENDARIO
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."ELEMENTOCALENDARIO" MODIFY ("FECHAYHORA" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."ELEMENTOCALENDARIO" MODIFY ("ENTRENADOR_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."ELEMENTOCALENDARIO" ADD CONSTRAINT "ELEMENTOCALENDARIO_PK" PRIMARY KEY ("FECHAYHORA", "ENTRENADOR_ID")
  USING INDEX "LIFEFIT"."ELEMENTOCALENDARIO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."USUARIO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."USUARIO" MODIFY ("APELLIDOS" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."USUARIO" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."USUARIO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENTRENADOR
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."ENTRENADOR" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."ENTRENADOR" MODIFY ("CENTRO_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."ENTRENADOR" ADD CONSTRAINT "ENTRENADOR_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."ENTRENADOR_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PLAN
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."PLAN" MODIFY ("INICIO" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."PLAN" MODIFY ("RUTINA_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."PLAN" MODIFY ("ENTRENA_ENTRENADOR_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."PLAN" MODIFY ("ENTRENA_CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."PLAN" ADD CONSTRAINT "PLAN_PK" PRIMARY KEY ("INICIO", "RUTINA_ID", "ENTRENA_CLIENTE_ID", "ENTRENA_ENTRENADOR_ID")
  USING INDEX (CREATE UNIQUE INDEX "LIFEFIT"."PLAN_PK1" ON "LIFEFIT"."PLAN" ("INICIO", "RUTINA_ID", "ENTRENA_CLIENTE_ID", "ENTRENA_ENTRENADOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_LIFEFIT" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENTRENA
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."ENTRENA" MODIFY ("ENTRENADOR_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."ENTRENA" MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."ENTRENA" ADD CONSTRAINT "ENTRENA_PK" PRIMARY KEY ("ENTRENADOR_ID", "CLIENTE_ID")
  USING INDEX "LIFEFIT"."ENTRENA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GERENTE
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."GERENTE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."GERENTE" MODIFY ("CENTRO_ID" NOT NULL ENABLE);
  ALTER TABLE "LIFEFIT"."GERENTE" ADD CONSTRAINT "GERENTE_PK" PRIMARY KEY ("ID")
  USING INDEX "LIFEFIT"."GERENTE_PK"  ENABLE;
  ALTER TABLE "LIFEFIT"."GERENTE" ADD CONSTRAINT "GERENTE_UK1" UNIQUE ("CENTRO_ID")
  USING INDEX "LIFEFIT"."GERENTE__IDX"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."CITA" ADD CONSTRAINT "CITA_CLIENTE_FK" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES "LIFEFIT"."CLIENTE" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."CITA" ADD CONSTRAINT "CITA_ELEMENTOCALENDARIO_FK" FOREIGN KEY ("FECHAYHORA", "ID")
	  REFERENCES "LIFEFIT"."ELEMENTOCALENDARIO" ("FECHAYHORA", "ENTRENADOR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."CLIENTE" ADD CONSTRAINT "CLIENTE_CENTRO_FK" FOREIGN KEY ("CENTRO_ID")
	  REFERENCES "LIFEFIT"."CENTRO" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."CLIENTE" ADD CONSTRAINT "CLIENTE_DIETA_FK" FOREIGN KEY ("DIETA_ID")
	  REFERENCES "LIFEFIT"."DIETA" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."CLIENTE" ADD CONSTRAINT "CLIENTE_USUARIO_FK" FOREIGN KEY ("ID")
	  REFERENCES "LIFEFIT"."USUARIO" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONFORMAN
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."CONFORMAN" ADD CONSTRAINT "CONFORMAN_EJERCICIO_FK" FOREIGN KEY ("EJERCICIO_ID")
	  REFERENCES "LIFEFIT"."EJERCICIO" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."CONFORMAN" ADD CONSTRAINT "CONFORMAN_RUTINA_FK" FOREIGN KEY ("RUTINA_ID")
	  REFERENCES "LIFEFIT"."RUTINA" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ELEMENTOCALENDARIO
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."ELEMENTOCALENDARIO" ADD CONSTRAINT "ELEM_ENTR_CALEN_FK" FOREIGN KEY ("ENTRENADOR_ID")
	  REFERENCES "LIFEFIT"."ENTRENADOR" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENTRENA
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."ENTRENA" ADD CONSTRAINT "ENTRENA_CLIENTE_FK" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES "LIFEFIT"."CLIENTE" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."ENTRENA" ADD CONSTRAINT "ENTRENA_ENTRENADOR_FK" FOREIGN KEY ("ENTRENADOR_ID")
	  REFERENCES "LIFEFIT"."ENTRENADOR" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENTRENADOR
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."ENTRENADOR" ADD CONSTRAINT "ENTRENADOR_CENTRO_FK" FOREIGN KEY ("CENTRO_ID")
	  REFERENCES "LIFEFIT"."CENTRO" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."ENTRENADOR" ADD CONSTRAINT "ENTRENADOR_USUARIO_FK" FOREIGN KEY ("ID")
	  REFERENCES "LIFEFIT"."USUARIO" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GERENTE
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."GERENTE" ADD CONSTRAINT "GERENTE_CENTRO_FK" FOREIGN KEY ("CENTRO_ID")
	  REFERENCES "LIFEFIT"."CENTRO" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."GERENTE" ADD CONSTRAINT "GERENTE_USUARIO_FK" FOREIGN KEY ("ID")
	  REFERENCES "LIFEFIT"."USUARIO" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAN
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."PLAN" ADD CONSTRAINT "PLAN_RUTINA_FK" FOREIGN KEY ("RUTINA_ID")
	  REFERENCES "LIFEFIT"."RUTINA" ("ID") ENABLE;
  ALTER TABLE "LIFEFIT"."PLAN" ADD CONSTRAINT "PLAN_FK1" FOREIGN KEY ("ENTRENA_ENTRENADOR_ID", "ENTRENA_CLIENTE_ID")
	  REFERENCES "LIFEFIT"."ENTRENA" ("ENTRENADOR_ID", "CLIENTE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SESION
--------------------------------------------------------

  ALTER TABLE "LIFEFIT"."SESION" ADD CONSTRAINT "SESION_FK1" FOREIGN KEY ("PLAN_INICIO", "PLAN_RUTINA_ID", "PLAN_CLIENTE_ID", "PLAN_ENTRENADOR_ID")
	  REFERENCES "LIFEFIT"."PLAN" ("INICIO", "RUTINA_ID", "ENTRENA_CLIENTE_ID", "ENTRENA_ENTRENADOR_ID") ENABLE;
