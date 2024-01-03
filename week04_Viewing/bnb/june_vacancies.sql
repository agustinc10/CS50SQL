CREATE VIEW june_vacancies AS
SELECT l.id, l.property_type, l.host_name, COUNT(a.id)
  FROM listings AS l
  JOIN availabilities AS a ON a.listing_id = l.id
 WHERE a.available = 'TRUE'
   AND a.date BETWEEN '2023-06-01' AND '2023-06-30'
 GROUP BY l.id;
