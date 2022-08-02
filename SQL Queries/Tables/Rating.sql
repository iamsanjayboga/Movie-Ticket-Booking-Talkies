--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RATING
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."RATING" 
   (	"RATINGID" NUMBER(*,0), 
	"MOVIEID" NUMBER(*,0), 
	"STARS" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RATING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."RATING_PK" ON "SYSTEM"."RATING" ("RATINGID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RATING
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."RATING" MODIFY ("RATINGID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RATING" MODIFY ("STARS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RATING" ADD CONSTRAINT "RATING_PK" PRIMARY KEY ("RATINGID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."RATING" ADD CONSTRAINT "CHECK_RATING" CHECK (STARS > 1) ENABLE;
