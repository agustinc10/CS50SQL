SELECT p.first_name, p.last_name FROM players AS p
  JOIN salaries AS s ON s.player_id = p.id
 WHERE s.salary = (
       SELECT MAX(salary) FROM salaries
       );
