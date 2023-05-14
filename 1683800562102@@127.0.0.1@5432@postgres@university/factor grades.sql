-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
UPDATE  student_courses 
SET grade=grade+10
WHERE grade<50