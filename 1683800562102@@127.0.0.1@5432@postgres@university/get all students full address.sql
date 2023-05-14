-- Active: 1683800562102@@127.0.0.1@5432@postgres@university
SELECT PEP.first_name,PEP.last_name,PEP.address_id,ADRS.city,ADRS.street
FROM people AS PEP  
JOIN address AS ADRS
ON  ADRS.address_id = PEP.address_id
