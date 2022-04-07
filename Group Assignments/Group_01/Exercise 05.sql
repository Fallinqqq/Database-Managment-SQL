ALTER TABLE committees

ADD CONSTRAINT committees_unique UNIQUE (committee_name);

Insert Statement

INSERT INTO committees VALUES(101, 'Management');

INSERT INTO committees VALUES(102, 'Management');