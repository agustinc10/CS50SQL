SELECT t.name, SUM(p.H) AS "total hits" FROM teams AS t
  JOIN performances AS p ON p.team_id = t.id
 WHERE p.year = 2001
 GROUP BY t.name
 ORDER BY SUM(p.H) DESC
 LIMIT 5;

