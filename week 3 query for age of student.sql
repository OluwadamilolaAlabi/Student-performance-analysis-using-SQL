SELECT 
    first_name, 
    second_name, 
    age 
FROM 
    student_profile;
SELECT 
    age, 
    COUNT(*) AS number_of_students 
FROM 
    student_profile 
GROUP BY 
    age 
ORDER BY 
    age ASC;
    SELECT 
    first_name, 
    second_name, 
    age 
FROM 
    student_profile 
WHERE 
    age = (SELECT MIN(age) FROM student_profile);
SELECT 
    first_name, 
    second_name, 
    age 
FROM 
    student_profile 
WHERE 
    age = (SELECT MAX(age) FROM student_profile);
    SELECT 
    first_name, 
    second_name, 
    age 
FROM 
    student_profile 
WHERE 
    age > 17;


