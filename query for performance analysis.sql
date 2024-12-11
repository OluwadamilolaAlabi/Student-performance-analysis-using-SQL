SELECT 
    sp.age, 
    AVG(spf.average_performance) AS average_performance 
FROM 
    student_profile sp 
JOIN 
    student_performance spf 
ON 
    sp.student_ID = spf.student_ID 
GROUP BY 
    sp.age 
ORDER BY 
    sp.age ASC;
SELECT 
    CASE 
        WHEN average_performance >= 90 THEN 'Excellent'
        WHEN average_performance BETWEEN 75 AND 89 THEN 'Good'
        WHEN average_performance BETWEEN 50 AND 74 THEN 'Average'
        ELSE 'Poor'
    END AS performance_category, 
    sp.age, 
    COUNT(*) AS number_of_students 
FROM 
    student_profile sp 
JOIN 
    student_performance spf 
ON 
    sp.student_ID = spf.student_ID 
GROUP BY 
    performance_category, sp.age 
ORDER BY 
    sp.age;
SELECT 
    sp.place_of_birth, 
    AVG(spf.average_performance) AS average_performance 
FROM 
    student_profile sp 
JOIN 
    student_performance spf 
ON 
    sp.student_ID = spf.student_ID 
GROUP BY 
    sp.place_of_birth 
ORDER BY 
    average_performance DESC;
SELECT 
    sp.first_name, 
    sp.second_name, 
    spf.average_performance 
FROM 
    student_profile sp 
JOIN 
    student_performance spf 
ON 
    sp.student_ID = spf.student_ID 
WHERE 
    spf.average_performance < 50;
    SELECT 
    sp.first_name, 
    sp.second_name, 
    spf.average_performance, 
    RANK() OVER (ORDER BY spf.average_performance DESC) AS performance_rank 
FROM 
    student_profile sp 
JOIN 
    student_performance spf 
ON 
    sp.student_ID = spf.student_ID;

