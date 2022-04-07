-- Grace Foster
-- Nastassja Hamlett
-- Kwame Dunn
-- Colby Childers
-- ITD 136-01

-- 1 Grace Foster
USE ap;
CREATE INDEX idx_zip_code
ON vendors (vendor_zip_code);

-- 2 Nastassja Hamlett
CREATE TABLE members
(
member_id INT PRIMARY KEY,
FirstName  varchar(45),
LastName varchar(45),
Address varchar(45),
State varchar(45),
Phone varchar(45)
);

CREATE TABLE Committees
(
committee_id INT PRIMARY KEY,
committee_name varchar(45)
);

CREATE TABLE members_committees
(
PRIMARY KEY (member_id, committee_id),
);

-- 3 Grace Foster
INSERT INTO members (member_id, first_name, last_name, address, city, state, phone) VALUES
(1, 'allison', 'Johnson', '4423 wonderland', 'Johnsonville', 'VA', '434231987' ),
(2, 'andrew', 'Mason', '5323 maplewood', 'Manderville', 'PA', '801899121' );

INSERT INTO committees (committee_id, committee_name) VALUES 
(1, 'Maplesector' ),
(2, 'Dogwood' );

INSERT INTO members_committees (member_id, comittee_id) VALUES 
(1, 2),
(2, 1),					
(2, 2);

SELECT c.name, m.last_name, m.first_name
FROM members m 
INNER JOIN members_comittees mc
	ON mc.members_id = m.members_id
INNER JOIN comittees c  
	ON mc.committees_id = c.commitees_id


-- 4 Kwame Dunn
ALTER TABLE members
ADD annual_dues decimal (2,3) not null,
ADD payment_date varchar(8) not null;

-- 5 Colby Childers
ALTER TABLE committees
ADD CONSTRAINT committees_unique UNIQUE (committee_name);
INSERT Statement
INSERT INTO committees VALUES(101, 'Management');
INSERT INTO committees VALUES(102, 'Management');
