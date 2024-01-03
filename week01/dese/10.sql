SELECT d.name, e.per_pupil_expenditure FROM districts AS d
  JOIN expenditures AS e ON e.district_id = d.id
 WHERE d.type = 'Public School District'
 GROUP BY d.name
 ORDER BY e.per_pupil_expenditure DESC, d.name
 LIMIT 10;
