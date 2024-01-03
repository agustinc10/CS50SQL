SELECT p.first_name, p.last_name, (s.salary/pe.H) AS "dollars per hit"
  FROM players AS p
  JOIN salaries AS s ON s.player_id = p.id
  JOIN performances AS pe ON pe.player_id = p.id
 WHERE pe.H > 0
   AND s.year = pe.year
   AND s.year = 2001
 ORDER BY "dollars per hit" ASC, p.first_name, p.last_name
 LIMIT 10;
