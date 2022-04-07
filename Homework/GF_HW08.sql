-- Grace Foster
-- ITD 136
-- HOMEWORK 08
--
-- 1
SELECT ms.marina_num, ms.slip_num, ms.boat_name
FROM marina_slip AS ms
where ms.owner_num IN 
	(SELECT o.owner_num FROM owner AS o where o.city = "Glander Bay")
and ms.boat_type = "Sprite 4000";

-- 2
SELECT ms.marina_num, ms.slip_num, ms.boat_name
FROM marina_slip AS ms
where ms.owner_num IN 
	(SELECT o.owner_num FROM owner AS o WHERE o.city = "Glander Bay")
AND NOT ms.boat_type = "Sprite 4000";

-- 3
SELECT svr1.service_ID, svr1.slip_ID
FROM service_request AS svr1
WHERE svr1.est_hours > ANY (SELECT 1 FROM service_request AS svr2 
WHERE svr2.category_num = 3);

-- 4
SELECT svr1.service_ID, svr1.slip_ID
FROM service_request AS svr1
WHERE svr1.est_hours > ANY (SELECT max(svr2.est_hours) FROM service_request AS svr2 
WHERE svr2.category_num = 3);



