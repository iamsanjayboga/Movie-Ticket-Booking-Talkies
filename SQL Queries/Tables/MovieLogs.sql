--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MOVIELOGS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MOVIELOGS" 
   (	"USERID" NVARCHAR2(200), 
	"DATETIME" DATE, 
	"IPADDRESS" NVARCHAR2(200), 
	"EVENT" NVARCHAR2(100), 
	"DESCRIPTION" NVARCHAR2(100)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
