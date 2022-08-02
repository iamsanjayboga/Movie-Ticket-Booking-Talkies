--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MOVIEGENRES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MOVIEGENRES" 
   (	"MOVIEID" NUMBER(*,0), 
	"GENREID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Ref Constraints for Table MOVIEGENRES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MOVIEGENRES" ADD CONSTRAINT "MOVIEGENRES_FK2" FOREIGN KEY ("MOVIEID")
	  REFERENCES "SYSTEM"."MOVIES" ("MOVIEID") ENABLE;
  ALTER TABLE "SYSTEM"."MOVIEGENRES" ADD CONSTRAINT "MOVIEGENRES_FK1" FOREIGN KEY ("GENREID")
	  REFERENCES "SYSTEM"."GENRES" ("GENREID") ENABLE;
