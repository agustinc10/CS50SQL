SELECT city, COUNT(*) FROM schools
 WHERE type LIKE '%Public%'
 GROUP BY city
 ORDER BY COUNT(*) DESC, city
 LIMIT 10;
