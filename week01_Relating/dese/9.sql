 SELECT d.name FROM districts AS d
   JOIN expenditures AS e ON e.district_id = d.id
  WHERE e.pupils = (
        SELECT MIN(pupils) FROM expenditures
        )
 GROUP BY d.name
 ORDER BY e.pupils, d.name;
