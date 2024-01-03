SELECT s.name, t.unsatisfactory FROM schools AS s
  JOIN staff_evaluations AS t ON t.district_id = s.district_id
 WHERE t.unsatisfactory > t.exemplary
 ORDER BY t.unsatisfactory DESC, s.name;
