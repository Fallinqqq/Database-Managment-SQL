-- Grace Foster
-- ITD136
-- Homework 04
--
USE alexamara;
-- 1
SELECT owner_num, last_name, first_name
FROM owner;
-- 2
SELECT * 
FROM marina;
-- 3
SELECT last_name, first_name
FROM owner
WHERE city = 'Bowton';
-- 4
SELECT last_name, first_name
FROM owner
WHERE city <> 'Bowton';
-- 5
SELECT marina_num, slip_num
FROM marina_slip
WHERE length <= 30;
-- 6
SELECT marina_num, slip_num
FROM marina_slip
WHERE boat_type = 'Dolphin 28'
AND marina_num = '1';
-- 7 
SELECT slip_num
FROM marina_slip
WHERE boat_type = 'Dolphin 28'
AND marina_num = '1';
-- 8
SELECT boat_name
FROM marina_slip
WHERE length BETWEEN 25 AND 30;
-- 9
SELECT slip_num
FROM marina_slip
WHERE marina_num = '1'
AND rental_fee < '3000';
-- 10
SELECT slip_id, category_num, est_hours, 60*est_hours AS estimated_cost
FROM service_request;
-- 11
SELECT marina_num, slip_num
FROM marina_slip
ORDER BY marina_num, boat_name;