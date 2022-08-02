--------------------------------------------------------
--  File created - Tuesday-August-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View FETCH_MOVIE_RECORDS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."FETCH_MOVIE_RECORDS" ("MOVIEID", "TITLE", "DESCRIPTION", "LANGUAGE", "RELEASE_DATE", "DIRECTOR", "GENRENAME", "FULL_NAME", "NATIONALITY", "DOB", "STARS") AS 
  SELECT M.MOVIEID, M.TITLE, M.DESCRIPTION,M.LANGUAGE,M.RELEASE_DATE,M.DIRECTOR,
G.GENRENAME, A.FIRSTNAME || ' ' || A.LASTNAME AS FULL_NAME, A.NATIONALITY, A.DOB,
R.STARS
FROM 
MOVIES M
JOIN movieactor MA
ON m.movieid = ma.movieid
JOIN ACTORS A
ON a.actorid = ma.actorid
JOIN moviegenres MG
ON m.movieid = mg.movieid
JOIN GENRES G
ON G.GENREID = mg.genreid
JOIN RATING R
ON M.MOVIEID = r.movieid
;
