-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
with allnames as 
(with Bigger as (
SELECT grade 
,STUD.student_id
,STUD.person_id
from student_courses
JOIN students AS STUD
ON STUD.student_id = STUD.student_id
WHERE grade > (SELECT AVG(GRADE) FROM student_courses)

)
SELECT BIG.*
,PEP.first_name
,PEP.last_name
FROM Bigger AS BIG
JOIN people AS PEP
ON PEP.person_id = BIG.person_id
)


SELECT DISTINCT first_name,last_name
from allnames 