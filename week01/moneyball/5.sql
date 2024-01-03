SELECT t.name FROM teams AS t
  JOIN performances AS pe ON pe.team_id = t.id
  JOIN players AS pl ON pl.id = pe.player_id
 WHERE pl.first_name = 'Satchel'
   AND pl.last_name = 'Paige'
 GROUP BY t.name
 ORDER BY t.name;
