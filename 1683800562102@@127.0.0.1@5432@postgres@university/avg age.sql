-- Active: 1683800562102@@127.0.0.1@5432@postgres@university







WITH people_with_ages as(
SELECT age(PEP.birthdate) as age
,PEP.birthdate
,PEP.last_name
,PEP.first_name
,PEP.person_id
FROM people as PEP 
)

SELECT AVG(PWA.age)
FROM people_with_ages as PWA 


