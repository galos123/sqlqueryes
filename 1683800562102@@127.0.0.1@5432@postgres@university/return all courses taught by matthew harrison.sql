SELECT 
pep.first_name
,pep.last_name  
,C1.course_id
,C1.name
,C1.professor_id 
,profs.person_id

FROM courses as C1
JOIN professors as profs
ON C1.professor_id =profs.professor_id
JOIN people as pep  
ON profs.person_id =pep.person_id 
WHERE first_name ='Matthew' AND last_name = 'Harrison'