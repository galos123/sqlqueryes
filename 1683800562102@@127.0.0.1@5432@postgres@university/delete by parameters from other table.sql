-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
WITH PROF2 as (
    SELECT CO.professor_id, COUNT(*) AS courses_taught
    FROM courses as CO 
    GROUP BY CO.professor_id
    HAVING  COUNT(*)>2
)


DELETE FROM professors AS PROF
WHERE favorite_book is NULL
OR EXISTS 
(SELECT * from PROF2 WHERE PROF.professor_id=PROF2.professor_id)
/*
DELETE 
FROM professors AS PROFS 
LEFT JOIN PROF2
ON PROFS.professor_id = PROF2.professor_id
WHERE PROFS.professor_id=PROF2.professor_id
AND PROFS.favorite_book=NULL 
AND PROF2.courses_taught>2

/*
PROF1 AS (
    SELECT professor_id,favorite_book
    FROM professors 
    where favorite_book

)*/

/*
DELETE FROM professors
WHERE favorite_book = NULL OR 



select * from PROF2
