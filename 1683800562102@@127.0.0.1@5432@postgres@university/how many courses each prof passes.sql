-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
SELECT PEP.first_name,PEP.last_name,PROFS.person_id, CORSS.professor_id,count(course_id)  
FROM courses as CORSS 
JOIN professors as PROFS 
ON CORSS.professor_id = PROFS.professor_id
JOIN people AS PEP 
ON PEP.person_id = PROFS.person_id
GROUP BY CORSS.professor_id,PROFS.person_id,PEP.first_name,PEP.last_name


/*,CORSS.course_id