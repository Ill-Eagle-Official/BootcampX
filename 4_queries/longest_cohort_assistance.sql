SELECT cohorts.name, avg(assistance_requests.completed_at - assistance_requests.started_at) AS avg_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY avg_duration DESC
LIMIT 1;