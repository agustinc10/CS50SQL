SELECT d.name, e.per_pupil_expenditure, t.exemplary
  FROM districts AS d
  JOIN expenditures AS e ON e.district_id = d.id
  JOIN staff_evaluations AS t ON t.district_id = d.id
 WHERE d.type = 'Public School District'
 GROUP BY d.name
HAVING e.per_pupil_expenditure > (
       SELECT AVG(per_pupil_expenditure) FROM expenditures
       )
   AND t.exemplary > (
       SELECT AVG(exemplary) FROM staff_evaluations
       )
 ORDER BY t.exemplary DESC, e.per_pupil_expenditure DESC;


