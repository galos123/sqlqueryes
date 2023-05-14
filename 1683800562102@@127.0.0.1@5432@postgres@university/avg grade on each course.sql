-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
with courses_avg as(
SELECT SC.course_id
,avg(grade)
FROM student_courses AS SC
group by SC.course_id
)

SELECT CORSS.name,CA.*
FROM courses_avg AS CA
JOIN courses AS CORSS
ON CA.course_id = CORSS.course_id