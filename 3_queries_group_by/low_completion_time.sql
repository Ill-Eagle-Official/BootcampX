SELECT students.name AS student, avg(assignment_submissions.duration) AS avg_completion_time, avg(assignments.duration) AS avg_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_assignment_duration;