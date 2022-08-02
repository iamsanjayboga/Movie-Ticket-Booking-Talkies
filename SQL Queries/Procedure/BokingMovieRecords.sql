--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure BOOKINGMOVIERECORDS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."BOOKINGMOVIERECORDS" (
    BOOKINGID IN INT,
    NAME IN NVARCHAR2,
    MOVIEID IN INT,
    NUMBER_OF_SEAT IN INT,
    SEATS IN NVARCHAR2,
    MOVIENAME IN NVARCHAR2
) AS 
BEGIN
  INSERT INTO BOOKEDMOVIES(BOOKINGID, NAME, MOVIEID, NUMBER_OF_SEAT, SEATS, MOVIENAME) 
  VALUES (trunc(dbms_random.value(0,999999),0), NAME, MOVIEID, NUMBER_OF_SEAT, SEATS, MOVIENAME);
END BookingMovieRecords;

/
