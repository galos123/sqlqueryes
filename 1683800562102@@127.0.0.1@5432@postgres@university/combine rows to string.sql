SELECT  SC.student_id, STRING_AGG( CAST(SC.grade AS VARCHAR),', ') AS my_grade
FROM student_courses as SC
GROUP BY SC.student_id;











/*Declare @Names Varchar(8000);
SELECT @Names =COALESCE(@Names+',','')+
    ISNULL(Name,'N/A')
FROM student_courses

