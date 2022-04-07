-- Grace Foster
-- ITD136-01
-- Homework 05
--
USE alexamara;
-- 1
SELECT owner_num, first_name, last_name
FROM owner;
-- 2
SELECT sr.slip_id, sr.description, sr.status
FROM service_request sr 
	JOIN service_category sc ON sr.category_num = sc.category_num 
WHERE sc.category_description = 'Routine Engine Maintenance';
-- 3
SELECT sr.slip_ID, ms.marina_num, ms.slip_num, sr.est_hours, sr.spent_hours, ms.owner_num, o.last_name
FROM service_request sr
	INNER JOIN service_category sc ON sr.category_num = sc.category_num
    INNER JOIN marina_slip ms ON sr.slip_id = ms.slip_id
    INNER JOIN owner o ON ms.owner_num = o.owner_num
WHERE sc.category_description = 'Routine Engine Maintenance';
    
-- 4
SELECT
	CONCAT(bt1.boat_name AND bt2.boat_name) AS boat_pairs,
    bt1.boat_type
FROM marina_slip bt1
	INNER JOIN marina_slip bt2 ON bt1.boat_type = bt2.boat_type AND bt1.slip_ID < bt2.slip_ID
ORDER BY bt1.boat_name, bt2. boat_name;

-- 5
SELECT o.owner_num, o.last_name,  o.first_name
FROM marina_slip ms, owner o
WHERE ms.owner_num = o.owner_num AND ms.marina_num = '1';


-- 6
SELECT ms.boat_name, o.owner_num, first_name, last_name
FROM marina_slip ms, owner o
WHERE ms.owner_num = o.owner_num AND LENGTH = '30';

-- 7
SELECT
	'SPRITE 4000' AS boat_name,
    slip_num AS 'boat slip' 
FROM marina_slip
UNION SELECT
	'SPRITE 4000' AS boat_name,
    slip_num AS 'boat slip' 
FROM marina_slip
WHERE slip_num IS NULL
ORDER BY boat_name;
	
-- 8
SELECT sr.slip_id, ms.boat_name, o.owner_num, sr.service_id, sr.est_hours, sr.spent_hours
FROM owner o
	INNER JOIN marina_slip ms ON ms.owner_num = o.owner_num
	INNER JOIN service_request sr ON sr.slip_ID = ms.slip_ID
    INNER JOIN service_category sc ON sc.category_num = sr.category_num
WHERE sc.category_num = '2';
-- 9
SELECT sr.slip_id, ms.boat_name, o.owner_num, sr.service_id, sr.est_hours, sr.spent_hours
FROM owner o
	INNER JOIN marina_slip ms ON ms.owner_num = o.owner_num
	INNER JOIN service_request sr ON sr.slip_ID = ms.slip_ID
    INNER JOIN service_category sc 
WHERE sc.category_num = '2';