create schema child_vaccination;


CREATE TABLE child_vaccination.childdetail(
    child_id INT NOT NULL PRIMARY KEY,
    childName VARCHAR(100) NOT null,
    date_of_birth DATE not null,
    gender VARCHAR(10)not null
);


INSERT INTO child_vaccination.childdetail(child_id,childName,date_of_birth,gender)
VALUES (1,'Kisu','02-04-2024','Female'),
       (2,'Yordi','04-07-2020','Male'),
       (3,'Mena','01-05-2022','Female'),
       (4,'Ruby','02-03-2023','Female'),
       (5,'Makuto','03-03-2025','female'),
       (6,'Beriassa','08-04-2021','Male'),
       (7,'Joyline','09-09-2021','Male'),
       (8,'Keza','04-04-2020','male'),
       (9,'Embet','05-05-2023','female'),
       (10,'Mwikali','07-04-2022','Male'),
       (11,'Menbere','04-02-2023','male'),
       (12,'Angy','06-09-2021','female'),
       (13,'Kisanet','03-03-2023','male'),
       (14,'Shirley','01-01-2021','Female'),
       (15,'Dorothy','02-02-2022','male');

SELECT * from child_vaccination.childdetail;


create table child_vaccination.parent(
parent_id  INT NOT NULL PRIMARY KEY,
name VARCHAR(10),
phone_number VARCHAR(10)
);

DROP TABLE child_vaccination.parent;

INSERT  INTO  child_vaccination.parent(parent_id,name, phone_number)VALUES
    (1,'Kalisa', '078347414'),
    (2,'Kamali', '079347416'),
    (3,'Kamariza','0799474147'),
    (4,'Jane', '078347426'),
    (5,'Joy', '0783474261'),
    (6,'Janette', '078647426'),
    (7,'Jane', '078347926'),
    (8,'Joyce', '078347426'),
    (9,'Joyline', '078554742'),
    (10,'Beza', '078342426'),
    (11,'Kamikazi', '072247426')

SELECT * FROM child_vaccination.parent

-- DROP TABLE child_vaccination.parent;

- CREATE TABLE child_vaccination.vaccination(
vc_id SERIAL primary key,
child_id INT not null,
type_of_vaccination VARCHAR(15) not null,
date_of_vaccination DATE not null,
expiry_date DATE not null,
donor VARCHAR(20) not null
)
INSERT INTO child_vaccination.vaccination(child_id, type_of_vaccination, date_of_vaccination, expiry_date, donor) VALUES
(1, 'Measles', '01-02-2025', '01-03-2025', 'Kalisa'),
(2, 'Polio', '01-03-2025', '01-04-2025', 'Mulisa'),
(3,'Measles', '01-05-2025', '01-06-2025', 'Becky'),
(4, 'Polio', '01-06-2025', '01-02-2025', 'Mwilisa')
SELECT * FROM child_vaccination.vaccination;
-- DROP TABLE child_vaccination.vaccination;


CREATE TABLE child_vaccination.vaccinated (
cvac_id SERIAL PRIMARY KEY,
child_id INT NOT NULL,
vc_id  INT NOT NULL,
vaccination_date DATE NOT null,
dose INT NOT NULL,
 CONSTRAINT fk_childdetail FOREIGN KEY (child_id)
    REFERENCES child_vaccination.childdetail(child_id),
 CONSTRAINT fk_vaccination FOREIGN KEY (vc_id)
    REFERENCES child_vaccination.vaccination(vc_id)
);
INSERT INTO child_vaccination.vaccinated (child_id,vc_id,vaccination_date, dose) VALUES
(1,1,'01-03-2025', '1'),
(2,2,'01-04-2025', '2'),
(3,3,'01-06-2025', '1'),
(4,4,'01-02-2025', '1')











