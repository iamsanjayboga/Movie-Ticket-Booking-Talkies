--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOOKEDMOVIES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOOKEDMOVIES" 
   (	"BOOKINGID" NUMBER, 
	"NAME" NVARCHAR2(200), 
	"MOVIEID" NUMBER, 
	"NUMBER_OF_SEAT" NUMBER, 
	"SEATS" NVARCHAR2(200), 
	"MOVIENAME" NVARCHAR2(200)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
