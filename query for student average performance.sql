SELECT 
    student_ID, 
    average_performance 
FROM 
    student_performance;
SELECT 
    CASE 
        WHEN average_performance < 50 THEN 'Below 50'
        WHEN average_performance BETWEEN 50 AND 59 THEN '50-59'
        WHEN average_performance BETWEEN 60 AND 69 THEN '60-69'
        WHEN average_performance BETWEEN 70 AND 79 THEN '70-79'
        WHEN average_performance BETWEEN 80 AND 89 THEN '80-89'
        WHEN average_performance >= 90 THEN '90 and above'
    END AS performance_range, 
    COUNT(*) AS number_of_students 
FROM 
    student_performance 
GROUP BY 
    performance_range 
ORDER BY 
    performance_range;
SELECT 
    student_ID, 
    average_performance 
FROM 
    student_performance 
WHERE 
    average_performance > 70;
SELECT 
    MIN(average_performance) AS lowest_performance 
FROM 
    student_performance;
SELECT 
    MAX(average_performance) AS highest_performance 
FROM 
    student_performance;
SELECT 
    AVG(average_performance) AS overall_average_performance 
FROM 
    student_performance;
