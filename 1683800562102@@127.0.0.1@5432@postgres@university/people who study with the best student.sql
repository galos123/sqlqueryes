-- Active: 1683800562102@@127.0.0.1@5432@postgres@universitywith best_student as
with best_stud_courses as (
with best_student as (
with Courses2 AS(
SELECT CO.course_id
,CO.name
,CO.passing_grade
,SC.student_id
,SC.grade
,STU.person_id
FROM courses as CO
JOIN student_courses as SC 
ON CO.course_id = SC.course_id
JOIN students as STU
ON SC.student_id = STU.student_id
JOIN people AS PEP 
ON PEP.person_id = STU.person_id
)
SELECT C2.student_id, C2.person_id
FROM Courses2 AS C2
ORDER BY grade DESC
LIMIT 1 

)


SELECT
STUDC.course_id
,COURSESS.name
FROM best_student as BEST
JOIN student_courses as STUDC
ON BEST.student_id = STUDC.student_id
JOIN courses AS COURSESS
ON STUDC.course_id =COURSESS.course_id

)

SELECT BSC.*
,STU.student_id
,STU.person_id
,PEP.first_name
,PEP.last_name  
FROM best_stud_courses as BSC
JOIN student_courses AS SC 
on SC.course_id =BSC.course_id
JOIN students as STU
ON SC.student_id = STU.student_id
JOIN people AS PEP 
ON PEP.person_id = STU.person_id


/*
JOIN courses AS COURSESS
ON STUDC.course_id =COURSESS.course_id