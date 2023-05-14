-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
WITH PROF2 as (
    SELECT CO.professor_id, COUNT(*) AS courses_taught
    FROM courses as CO 
    GROUP BY CO.professor_id
    HAVING  COUNT(*)>2
)

select * from PROF2

/*
DELETE FROM professors a
WHERE favorite_book is NULL
OR EXISTS (SELECT 1 from PROF2 WHERE a.professor_id=PROF2.professor_id)