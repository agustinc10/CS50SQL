 SELECT city, COUNT(*) FROM schools
  WHERE type LIKE '%Public%'
  GROUP BY city
 HAVING COUNT(*) < 4
  ORDER BY COUNT(*) DESC, city;
