SELECT cohorts.name as cohort_name, count(students.*) as student_count
FROM cohorts
JOIN students ON id = students.cohort_id
GROUP BY cohort_name
HAVING count(student.*) >= 18
ORDER BY cohort_name