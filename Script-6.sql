select *from child_vaccination.childdetail;

--SELECT * FROM child_vaccination.vaccination;

select *from child_vaccination.vaccination;


CREATE TABLE child_vaccination.vaccination(
vc_id SERIAL primary key,
child_id INT not null,
type_of_vaccination VARCHAR(15) not null,
date_of_vaccination DATE not null,
expiry_date DATE not null,
donor VARCHAR(20) not null
);

INSERT INTO child_vaccination.vaccination(child_id, type_of_vaccination, date_of_vaccination, expiry_date, donor) VALUES
(1, 'Measles', '01-02-2025', '01-03-2025', 'Kalisa'),
(2, 'Polio', '01-03-2025', '01-04-2025', 'Mulisa'),
(3,'Measles', '01-05-2025', '01-06-2025', 'Becky'),
(4,'Measles', '01-05-2025', '01-06-2025', 'Bella'),
(5, 'Polio', '01-06-2025', '01-02-2025', 'Mwilisa'),
(6,'Measles', '01-05-2025', '01-06-2025', 'Becky'),
(7,'Measles', '01-05-2025', '01-06-2025', 'Benjamin'),
(8,'Measles', '01-05-2025', '01-06-2025', 'Becky'),
(9,'Polio', '01-05-2025', '01-06-2025', 'Ben'),
(10,'Measles', '01-05-2025', '01-06-2025', 'Betty'),
(11,'Polio', '01-05-2025', '01-06-2025', 'Bebe'),
(12,'Measles', '01-05-2025', '01-06-2025', 'Nelly'),
(13,'Polio', '01-05-2025', '01-06-2025', 'Bonnie'),
(14,'POlio', '01-05-2025', '01-06-2025', 'Becky'),
(15,'Measles', '01-05-2025', '01-06-2025', 'Lucky');
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
(1,1,'01-03-2023', '1'),
(2,2,'01-04-2023', '2'),
(3,3,'01-06-2024', '1'),
(4,4,'01-02-2024', '1'),
(5,5,'01-02-2022', '1'),
(6,6,'01-02-2022', '2'),
(7,7,'01-02-2023', '1'),
(8,8,'01-02-2023', '2'),
(9,9,'01-02-2025', '1'),
(10,10,'01-02-2025', '1'),
(11,11,'01-02-2025', '1'),
(12,12,'01-02-2025', '2'),
(13,13,'01-02-2025', '2'),
(14,14,'01-02-2025', '1'),
(15,15,'01-02-2025', '2');
SELECT COUNT (DISTINCT child_id) as number_of_children from child_vaccination.vaccinated
where EXTRACT(year from vaccination_date) = (select MAX(extract(year from vaccination_date)) from child_vaccination.vaccinated);

