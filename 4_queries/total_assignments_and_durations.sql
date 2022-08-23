SELECT assignments.day, count(*) AS total_assignments, sum(duration) AS total_duration
FROM assignments
GROUP BY day
ORDER BY day;