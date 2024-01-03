SELECT t.name, ROUND(AVG(s.salary), 2) AS "average salary" FROM salaries AS s
  JOIN teams AS t ON t.id = s.team_id
 WHERE s.year = 2001
 GROUP BY s.team_id
 ORDER BY AVG(s.salary)
 LIMIT 5;
