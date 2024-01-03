SELECT d.name, SUM(pupils) FROM districts AS d
  JOIN expenditures AS e ON e.district_id = d.id
 GROUP BY d.name
 ORDER BY SUM(pupils) DESC, d.name;

