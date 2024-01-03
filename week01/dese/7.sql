SELECT s.name FROM schools AS s
  JOIN districts AS d ON d.id = s.district_id
 WHERE d.name = 'Cambridge';
