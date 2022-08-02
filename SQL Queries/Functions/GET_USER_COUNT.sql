--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function GET_USER_COUNT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."GET_USER_COUNT" (
    name NVARCHAR2
) 
RETURN NUMBER
IS
    usercount NUMBER := 0;
BEGIN

    SELECT COUNT(FIRSTNAME)
    INTO usercount
    FROM USER_TABLE 
    WHERE UPPER(FIRSTNAME) LIKE UPPER('%'|| name ||'%');

    -- return the total count
    RETURN usercount;
END;

/
