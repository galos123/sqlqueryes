-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
SELECT V1.student_id, V1.person_id ,SC.course_id ,SC.grade 
FROM  students AS V1 JOIN student_courses AS SC 
ON V1.student_id=SC.student_id
