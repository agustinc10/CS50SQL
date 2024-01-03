 SELECT name FROM schools AS s
   JOIN graduation_rates AS g ON g.school_id = s.id
  WHERE graduated = 100;
