CREATE TABLE member
(
member_id INT PRIMARY KEY,
FirstName  varchar(45),
LastName varchar(45),
Address varchar(45),
State varchar(45),
Phone varchar(45)
);

CREATE TABLE if not exists member
( 
PRIMARY KEY (member_id, committee_id),
);

CREATE TABLE Committees
(
committee_id INT PRIMARY KEY,
committee_name varchar(45)

);