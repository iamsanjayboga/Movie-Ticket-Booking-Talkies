--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
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
