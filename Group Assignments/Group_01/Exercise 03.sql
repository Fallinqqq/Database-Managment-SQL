INSERT INTO members (member_id, first_name, last_name, address, city, state, phone) VALUES
(1, 'allison', 'Johnson', '4423 wonderland', 'Johnsonville', 'FL', '988111222' ),
(2, 'andrew', 'Mason', '5323 maplewood', 'Manderville', 'PA', '556191212' );

INSERT INTO committees (committee_id, committee_name) VALUES 
(1, 'Lightsector' ),
(2, 'Dogwood' );

INSERT INTO members_committees (member_id, comittee_id) VALUES 
(1, 2),
(2, 1),					
(2, 2);

SELECT * FROM vendor;
