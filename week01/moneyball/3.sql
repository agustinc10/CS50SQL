SELECT "year","HR" FROM "performances" AS "p"
  JOIN "players" AS "a" ON a.id = p.player_id
 WHERE birth_year = '1969'
   AND first_name = 'Ken'
   AND last_name = 'Griffey'
 ORDER BY year DESC;
