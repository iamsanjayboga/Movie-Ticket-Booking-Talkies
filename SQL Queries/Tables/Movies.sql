--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MOVIES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MOVIES" 
   (	"MOVIEID" NUMBER(*,0), 
	"TITLE" NVARCHAR2(20), 
	"DESCRIPTION" NVARCHAR2(2000), 
	"LANGUAGE" NVARCHAR2(20), 
	"RELEASE_DATE" DATE, 
	"DIRECTOR" NVARCHAR2(20)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MOVIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MOVIES_PK" ON "SYSTEM"."MOVIES" ("MOVIEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger TR_ON_MOVIE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."TR_ON_MOVIE" 
AFTER INSERT 
ON MOVIES
FOR EACH ROW
DECLARE
    v_username NVARCHAR2(200);
    v_ipaddress NVARCHAR2(200);    
BEGIN
    SELECT User INTO v_username FROM dual;
    SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') INTO v_ipaddress FROM dual;
    INSERT INTO MOVIELOGS (USERID, DATETIME, IPADDRESS, EVENT, DESCRIPTION) 
    VALUES (user, SYSDATE, v_ipaddress, 'Movie Created', 'Movie created');
END;
/
ALTER TRIGGER "SYSTEM"."TR_ON_MOVIE" ENABLE;
--------------------------------------------------------
--  Constraints for Table MOVIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MOVIES" MODIFY ("MOVIEID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MOVIES" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MOVIES" MODIFY ("LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MOVIES" MODIFY ("RELEASE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MOVIES" MODIFY ("DIRECTOR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MOVIES" ADD CONSTRAINT "MOVIES_PK" PRIMARY KEY ("MOVIEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
