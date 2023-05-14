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


(SELECT C2.*
FROM Courses2 AS C2
ORDER BY grade ASC
LIMIT 1 )

UNION ALL

(
SELECT C2.*
FROM Courses2 AS C2
ORDER BY grade DESC
LIMIT 1 
)



