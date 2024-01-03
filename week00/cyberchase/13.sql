SELECT "title", "topic"
  FROM "episodes"
 WHERE "season" = 5
   AND "air_date" LIKE '%-09-%';
