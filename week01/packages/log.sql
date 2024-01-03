
-- *** The Lost Letter ***
-- Search the id of the address where the letter went
SELECT * FROM scans AS s
  JOIN addresses AS a1 ON a1.id = s.address_id
  JOIN packages AS p ON p.from_address_id = s.address_id
 WHERE a1.address = '900 Somerville Avenue'
   AND p.contents = 'Congratulatory letter';

-- Search characteristics of the address
SELECT * FROM addresses
 WHERE id = 854;

-- *** The Devious Delivery ***
-- Search type of delivery address for a duck with no "from" address
SELECT a2.address, a2.type, p.contents, s.action FROM addresses AS a
  JOIN packages AS p ON p.to_address_id = a.id
  JOIN scans AS s On s.package_id = p.id
  JOIN addresses AS a2 ON a2.id = s.address_id
 WHERE p.contents LIKE '%duck%'
   AND p.from_address_id IS NULL;


-- *** The Forgotten Gift ***

-- Search for content
SELECT * FROM packages AS p
  JOIN addresses AS a1 ON a1.id = p.from_address_id
  JOIN addresses AS a2 ON a2.id = p.to_address_id
 WHERE a1.address = '109 Tileston Street'
   AND a2.address = '728 Maple Place';

-- Search for the last driver
SELECT name FROM drivers AS d
  JOIN scans AS s ON s.driver_id = d.id
  JOIN packages AS p ON p.id = s.package_id
 WHERE p.id IN (
        SELECT p.id FROM packages AS p
          JOIN addresses AS a1 ON a1.id = p.from_address_id
          JOIN addresses AS a2 ON a2.id = p.to_address_id
         WHERE a1.address = '109 Tileston Street'
           AND a2.address = '728 Maple Place')
 ORDER BY s.timestamp DESC
 LIMIT 1;
