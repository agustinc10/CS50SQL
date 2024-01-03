SELECT p.first_name, p.last_name, s.salary, pe.HR, s.year
  FROM players AS p
  JOIN salaries AS s ON s.player_id = p.id
  JOIN performances AS pe ON pe.player_id = p.id
 WHERE s.year = pe.year
 ORDER BY p.id, s.year DESC, pe.HR DESC, s.salary DESC
