SELECT COUNT(*) AS "right handed bats", "first_name", "last_name", "debut"
  FROM "players"
 WHERE "birth_country" = 'USA'
 ORDER BY "debut", "first_name", "last name";
