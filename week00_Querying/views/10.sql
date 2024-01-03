SELECT COUNT(*) AS "Quantity of prints", "english_title" AS "ENG" , "japanese_title" AS "JPY"
  FROM "views"
 WHERE "artist" NOT NULL
 GROUP BY "artist"
 ORDER BY "artist" DESC;
