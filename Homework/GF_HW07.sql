-- Grace Foster
-- ITD 136-01
-- HOMEWORK 07
--
USE alexamara;

-- 1
SELECT COUNT(*)
FROM marina_slip
WHERE boat_type = 'Dolphin 28';

-- 2 
SELECT SUM(rental_fee) AS total_rental_fee, length 
FROM marina_slip
GROUP BY length;

-- 3
SELECT COUNT(*) AS number_of_boats, MAX(rental_fee) AS highest_rental_fee, MIN(length) AS shortest_boat
FROM marina_slip;

-- 4
SELECT COUNT(*) AS number_of_boats, MAX(rental_fee) AS highest_rental_fee, MIN(length) AS shortest_boat
FROM marina_slip
GROUP BY marina_num;

