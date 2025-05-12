create schema child_vaccination;
CREATE TABLE Child_vaccination.childdetail(
    child_id INT primary Key,
    childName VARCHAR(100) NOT null,
    date_of_birth DATE not null,
    gender VARCHAR(10)not null
)


INSERT INTO Child_vaccination.childdetail(childName,date_of_birth,gender)
VALUES ('Kisu','02-04-2024','Female'),
       ('Yordi','04-07-2020','Male'),
       ('Mena','01-05-2022','Female'),
       ('Ruby','02-03-2023','Female'),
       ('Makuto','03-03-2025','female'),
       ('Beriassa','08-04-2021','Male'),
       ('Joyline','09-09-2021','Male'),
       ('Keza','04-04-2020','male'),
       ('Embet','05-05-2023','female'),
       ('Mwikali','07-04-2022','Male'),
       ('Menbere','04-02-2023','male'),
       ('Angy','06-09-2021','female'),
       ('Kisanet','03-03-2023','male'),
       ('Shirley','01-01-2021','Female'),
       ('Dorothy','02-02-2022','male')

SELECT * FROM child_vaccination.childdetail;
SELECT COUNT(*) 
FROM child_vaccination.childdetail
WHERE date_of_birth > '20-05-2025';

SELECT COUNT (*) 
FROM Child_vaccination.childdetail 
WHERE gender = 'female ' OR gender = 'Female'; 



-- CREATE TABLE child_vaccination.vaccination(
-- vc_id SERIAL primary key,
-- child_id INT not null,
-- type_of_vaccination VARCHAR(15) not null,
-- date_of_vaccination DATE not null,
-- expiry_date DATE not null,
-- donor VARCHAR(20) not null

-- )
-- INSERT INTO child_vaccination.vaccination(child_id, type_of_vaccination, date_of_vaccination, expiry_date, donor) VALUES
-- (1, 'Measles', '01-02-2025', '01-03-2025', 'Kalisa'),
-- (2, 'Polio', '01-03-2025', '01-04-2025', 'Mulisa'),
-- (3,'Measles', '01-05-2025', '01-06-2025', 'Becky'),
-- (4, 'Polio', '01-06-2025', '01-02-2025', 'Mwilisa')

-- SELECT * FROM child_vaccination.vaccination;
-- DROP TABLE child_vaccination.vaccination;

-- CREATE TABLE child_vaccination.vaccinated (
-- cvac_id SERIAL PRIMARY KEY,
-- child_id INT NOT NULL,
-- vc_id  INT NOT NULL,
-- vaccination_date DATE NOT null,
-- dose INT NOT NULL,

--  CONSTRAINT fk_childdetail FOREIGN KEY (child_id)
--     REFERENCES child_vaccination.childdetail(child_id),

--  CONSTRAINT fk_vaccination FOREIGN KEY (vc_id)
--     REFERENCES child_vaccination.vaccination(vc_id)
-- )
-- INSERT INTO child_vaccination.vaccinated (child_id,vc_id,vaccination_date, dose) VALUES
-- (1,1,'01-03-2025', '1'),
-- (2,2,'01-04-2025', '2'),
-- (3,3,'01-06-2025', '1'),
-- (4,4,'01-02-2025', '1')


-- SELECT * FROM child_vaccination.vaccinated;



  

-- -- DROP SCHEMA child_vaccination.vaccinated;





--   -- drop table child_vaccination.vaccinated;





