CREATE DATABASE alexamara;

USE alexamara;

CREATE TABLE marina
(marina_num CHAR(4) PRIMARY KEY,
name CHAR(20),
address CHAR(15),
city CHAR(15),
state CHAR(2),
zip CHAR(5) );
-- 
CREATE TABLE marina_slip
(slip_ID DECIMAL(4,0) PRIMARY KEY,
marina_num CHAR(4),
slip_num CHAR(4),
length DECIMAL(4,0),
rental_fee DECIMAL(8,2),
boat_name CHAR(50),
boat_type CHAR(50),
owner_num CHAR(4) );
-- 
CREATE TABLE owner
(owner_num CHAR(4) PRIMARY KEY,
last_name CHAR(50),
first_name CHAR(20),
address CHAR(15),
city CHAR(15),
state CHAR(2),
zip CHAR(5) );
-- 
CREATE TABLE service_category
(category_num DECIMAL(4,0) PRIMARY KEY,
category_description CHAR(255) );
-- 
CREATE TABLE service_request
(service_ID DECIMAL(4,0) PRIMARY KEY,
slip_ID DECIMAL(4,0),
category_num DECIMAL(4,0),
description CHAR(255),
status CHAR(255),
est_hours DECIMAL(4,2),
spent_hours DECIMAL(4,2),
next_service_date date );
-- 
INSERT INTO marina
VALUES
('1','alexamara East','108 2nd Ave.','Brinman','FL','32273');
INSERT INTO marina
VALUES
('2','alexamara Central','283 Branston','W. Brinman','FL','32274');
-- 
INSERT INTO marina_slip
VALUES
(1,'1','A1',40,3800.00,'Anderson II','Sprite 4000','AN75');
INSERT INTO marina_slip
VALUES
(2,'1','A2',40,3800.00,'Our Toy','Ray 4025','EL25');
INSERT INTO marina_slip
VALUES
(3,'1','A3',40,3600.00,'Escape','Sprite 4000','KE22');
INSERT INTO marina_slip
VALUES
(4,'1','B1',30,2400.00,'Gypsy','Dolphin 28','JU92');
INSERT INTO marina_slip
VALUES
(5,'1','B2',30,2600.00,'Anderson III','Sprite 3000','AN75');
INSERT INTO marina_slip
VALUES
(6,'2','1',25,1800.00,'Bravo','Dolphin 25','AD57');
INSERT INTO marina_slip
VALUES
(7,'2','2',25,1800.00,'Chinook','Dolphin 22','FE82');
INSERT INTO marina_slip
VALUES
(8,'2','3',25,2000.00,'Listy','Dolphin 25','SM72');
INSERT INTO marina_slip
VALUES
(9,'2','4',30,2500.00,'Mermaid','Dolphin 28','BL72');
INSERT INTO marina_slip
VALUES
(10,'2','5',40,4200.00,'Axxon II','Dolphin 40','NO27');
INSERT INTO marina_slip
VALUES
(11,'2','6',40,4200.00,'Karvel','Ray 4025','TR72');
-- 
INSERT INTO owner
VALUES
('AD57','Adney','Bruce and Jean','208 Citrus','Bowton','FL','31313');
INSERT INTO owner
VALUES
('AN75','Anderson','Bill','18 Wilcox','Glander Bay','FL','31044');
INSERT INTO owner
VALUES
('BL72','Blake','Mary','2672 Commodore','Bowton','FL','31313');
INSERT INTO owner
VALUES
('EL25','Elend','Sandy and Bill','462 Riverside','Rivard','FL','31062');
INSERT INTO owner
VALUES
('FE82','Feenstra','Daniel','7822 Coventry','Kaleva','FL','32521');
INSERT INTO owner
VALUES
('JU92','Juarez','Maria','8922 Oak','Rivard','FL','31062');
INSERT INTO owner
VALUES
('KE22','Kelly','Alyssa','5271 Waters','Bowton','FL','31313');
INSERT INTO owner
VALUES
('NO27','Norton','Peter','2811 Lakewood','Lewiston','FL','32765');
INSERT INTO owner
VALUES
('SM72','Smeltz','Becky and Dave','922 Garland','Glander Bay','FL','31044');
INSERT INTO owner
VALUES
('TR72','Trent','Ashton','922 Crest','Bay Shores','FL','30992');
-- 
INSERT INTO service_category
VALUES
(1,'Routine engine maintenance');
INSERT INTO service_category
VALUES
(2,'Engine repair');
INSERT INTO service_category
VALUES
(3,'Air conditioning');
INSERT INTO service_category
VALUES
(4,'Electrical systems');
INSERT INTO service_category
VALUES
(5,'Fiberglass repair');
INSERT INTO service_category
VALUES
(6,'Canvas installation');
INSERT INTO service_category
VALUES
(7,'Canvas repair');
INSERT INTO service_category
VALUES
(8,'Electronic systems (radar, GPS, autopilots, etc.)');
-- 
INSERT INTO service_request
VALUES
(1,1,3,'Air conditioner periodically stops with code indicating low coolant level. Diagnose and repair.','Technician has verified the problem. Air conditioning specialist has been called.','4','2','2007-07-12');
INSERT INTO service_request
VALUES
(2,5,4,'Fuse on port motor blown on two occasions. Diagnose and repair.','Open','2','0','2007-07-12');
INSERT INTO service_request
VALUES
(3,4,1,'Oil change and general routine maintenance (check fluid levels, clean sea strainers etc.).','service call has been scheduled.','1','0','2007-07-16');
INSERT INTO service_request
VALUES
(4,1,2,'Engine oil level has been dropping drastically. Diagnose and repair.','Open','2','0','2007-07-13');
INSERT INTO service_request
VALUES
(5,3,5,'Open pockets at base of two stantions.','Technician has completed the initial filling of the open pockets. Will complete the job after the initial fill has had sufficient time to dry.','4','2','2007-07-13');
INSERT INTO service_request
VALUES
(6,11,4,'Electric-flush system periodically stops functioning. Diagnose and repair.','Open','3','0','2010-12-31');
INSERT INTO service_request
VALUES
(7,6,2,'Engine overheating. Loss of coolant. Diagnose and repair.','Open','2','0','2007-07-13');
INSERT INTO service_request
VALUES
(8,6,2,'Heat exchanger not operating correctly.','Technician has determined that the exchanger is faulty. New exchanger has been ordered.','4','1','2007-07-17');
INSERT INTO service_request
VALUES
(9,7,6,'Canvas severely damaged in windstorm. Order and install new canvas.','Open','8','0','2007-07-16');
INSERT INTO service_request
VALUES
(10,2,8,'Install new GPS and chart plotter.','Scheduled','7','0','2007-07-17');
INSERT INTO service_request
VALUES
(11,2,3,'Air conditioning unit shuts down with HHH showing on the control panel.','Technician not able to replicate the problem. Air conditioning unit ran fine through multiple tests. owner to notify technician if the problem recurs.','1','1','2010-12-31');
INSERT INTO service_request
VALUES
(12,4,8,'Both speed and depth readings on data unit are significantly less than the owner thinks they should be.','Technician has scheduled appointment with owner to attempt to verify the problem.','2','0','2007-07-16');
INSERT INTO service_request
VALUES
(13,8,2,'Customer describes engine as making a clattering sound.','Technician suspects problem with either propeller or shaft and has scheduled the boat to be pulled from the water for further investigation.','5','2','2007-07-12');
INSERT INTO service_request
VALUES
(14,7,5,'owner accident caused damage to forward portion of port side.','Technician has scheduled repair.','6','0','2007-07-13');
INSERT INTO service_request
VALUES
(15,11,7,'Canvas leaks around zippers in heavy rain. Install overlap around zippers to prevent leaks.','Overlap has been created. Installation has been scheduled.','8','3','2007-07-17');
UPDATE service_request
SET next_service_date = Null
WHERE next_service_date = '2010-12-31';

