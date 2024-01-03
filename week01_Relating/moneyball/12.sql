SELECT p.first_name, p.last_name
  FROM players AS p
 WHERE p.id IN (
       SELECT p.id
         FROM players AS p
         JOIN salaries AS s ON s.player_id = p.id
         JOIN performances AS pe ON pe.player_id = p.id
         WHERE pe.H > 0
         AND s.year = pe.year
         AND s.year = 2001
         ORDER BY (s.salary/pe.H) ASC, p.id
         LIMIT 10
       )
   AND p.id IN (
       SELECT p.id
         FROM players AS p
         JOIN salaries AS s ON s.player_id = p.id
         JOIN performances AS pe ON pe.player_id = p.id
         WHERE pe.RBI > 0
         AND s.year = pe.year
         AND s.year = 2001
         ORDER BY (s.salary/pe.RBI) ASC, p.id
         LIMIT 10
       )
 ORDER BY p.id;
