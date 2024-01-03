SELECT p.first_name, p.last_name, s.salary FROM salaries AS s
  JOIN players AS p ON p.id = s.player_id
 WHERE s.year = 2001
 ORDER BY s.salary, p.first_name, p.last_name, p.ID
 LIMIT 50;
