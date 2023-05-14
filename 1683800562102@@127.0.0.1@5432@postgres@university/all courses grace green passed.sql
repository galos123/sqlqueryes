-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
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
Where CO.passing_grade <=SC.grade
)


SELECT C2.*
,PEP.first_name
,PEP.last_name
FROM Courses2 AS C2
JOIN people AS PEP 
ON PEP.person_id = C2.person_id
WHERE PEP.first_name ='Jane'
AND PEP.last_name ='Doe'





/*
SELECT PEP.first_name
,PEP.last_name
,CO.course_id
,CO.name
,CO.passing_grade
,SC.student_id
,SC.grade
FROM courses as CO
JOIN student_courses as SC 
ON CO.course_id = SC.course_id
Where CO.passing_grade <=SC.grade



with Courses2 AS(
SELECT CO.course_id
,CO.name
,CO.passing_grade
,SC.student_id
,SC.student_id
,SC.grade
FROM courses as CO
JOIN student_courses as SC 
ON CO.course_id = SC.course_id
Where CO.passing_grade <=SC.grade
)



SELECT C2.* 
,STU.
FROM courses2 as C2
JOIN students as STU
ON C2.student_id = STU.student_id

