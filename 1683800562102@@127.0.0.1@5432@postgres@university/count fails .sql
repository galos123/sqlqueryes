-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
with Courses2 AS(
SELECT DISTINCT ON (student_id)
CO.course_id
,CO.name
,CO.passing_grade
,SC.student_id
,SC.grade
,STU.person_id
,PEP.first_name
,PEP.last_name
FROM courses as CO
JOIN student_courses as SC 
ON CO.course_id = SC.course_id
JOIN students as STU
ON SC.student_id = STU.student_id
JOIN people AS PEP 
ON PEP.person_id = STU.person_id
where grade <passing_grade 
)




Select COUNT(first_name) 
FROM Courses2

