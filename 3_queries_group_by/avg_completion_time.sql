SELECT students.name AS student_name, avg(assignment_submissions.duration) AS avg_completion_time
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student_name
ORDER BY avg_completion_time DESC;