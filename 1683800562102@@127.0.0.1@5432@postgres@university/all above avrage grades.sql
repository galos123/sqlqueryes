-- Active: 1683800562102@@127.0.0.1@5432@postgres@university

with courses_avg as(
SELECT SC.course_id
,avg(grade)
FROM student_courses AS SC
group by SC.course_id
)

SELECT CA.*
,SC.student_id
,SC.grade
FROM courses_avg AS CA
JOIN student_courses AS SC
ON CA.course_id = SC.course_id
WHERE SC.grade > CA.avg
/* SC.grade>courses_avg.avg
