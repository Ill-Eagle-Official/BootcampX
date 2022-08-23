SELECT count(assistance_requests.*) AS total_student_assistance, students.name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;