SELECT 
    first_name, 
    second_name, 
    place_of_birth 
FROM 
    student_profile;
SELECT 
    place_of_birth, 
    COUNT(*) AS number_of_students 
FROM 
    student_profile 
GROUP BY 
    place_of_birth 
ORDER BY 
    number_of_students DESC;
SELECT 
    place_of_birth, 
    AVG(age) AS average_age 
FROM 
    student_profile 
GROUP BY 
    place_of_birth 
ORDER BY 
    average_age DESC;

