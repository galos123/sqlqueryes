with courses3 AS(
with Courses2 AS(
SELECT CO.course_id
,CO.name
,CO.passing_grade
,SC.student_id
,SC.grade
,STU.person_id
FROM courses as CO
RIGHT JOIN student_courses as SC 
ON CO.course_id = SC.course_id
LEFT JOIN students as STU
ON SC.student_id = STU.student_id
Where CO.passing_grade <=SC.grade
)


SELECT C2.*
,PEP.first_name
,PEP.last_name
FROM Courses2 AS C2
RIGHT JOIN people AS PEP 
ON PEP.person_id = C2.person_id
)

SELECT C3.*
FROM courses3 AS C3



