SELECT s.name, SUM(e.per_pupil_expenditure), g.graduated
  FROM schools AS s
  JOIN expenditures AS e ON e.district_id = s.district_id
  JOIN graduation_rates AS g ON g.school_id = s.id
 GROUP BY s.name
 ORDER BY SUM(e.per_pupil_expenditure) DESC, s.name;
