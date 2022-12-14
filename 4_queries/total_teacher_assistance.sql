SELECT teachers.name, count(assistance_requests.*) AS total_assistance
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
