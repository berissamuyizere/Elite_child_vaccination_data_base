-- Active: 1747042542979@@127.0.0.1@5432@data_class
-- CREATE SCHEMA child_vaccination;
-- CREATE TABLE child_vaccination.medical(
--     medical_id SERIAL PRIMARY KEY,
--     child_id INTEGER NOT NULL,
--     condition VARCHAR(100) NOT NULL,                                                                                                                                                                                                                                                                                                                                                                                                                                                                           status VARCHAR(20) NOT NULL,
--     weight NUMERIC(5,2) NOT NULL CHECK (weight>0),
--     height NUMERIC(5,2)NOT NULL CHECK (weight>0))

-- SELECT * FROM child_vaccination.medical ;
-- INSERT INTO child_vaccination.medical(child_id,condition,status,weight,height)VALUES
-- (01,'Underweight','Not bad',15.03,78.04),
-- (02,'Obese','bad',20.04,90.03),
-- (03,'Normal','Good',30.53,98.01),
-- (04,'Normal','Good',50.92,112.80),
-- (05,'Obese','bad',49.75,120.58),
-- (06,'Normal','Good',30.96,129.86),
-- (07,'Obese','Not bad',45.99,90.22)
-- (08,'Underweight','bad',45.68,120.76),
-- (09,'Obese','bad',50.07,123.49),
-- (10,'Normal','Good',33.33,92.01),
-- (11,'Normal','Good',34.12,200.90),
-- (12,'Obese','bad',69.75,150.98),
-- (13,'Bad','Good',49.26,117.96),
-- (14,'Good','Good',30.43,98.01),
-- (15,'Under weight','Good',50.32,212.80)

-- SELECT * FROM child_vaccination.medical;

-- CREATE TABLE child_vaccination.child_detail(
--     child_id SERIAL primary Key,
--     childName VARCHAR(100) NOT null,
--     date_of_birth DATE not null,
--     gender VARCHAR(10)not null,

--     CONSTRAINT fk_child
--    FOREIGN KEY(child_id)
--       REFERENCES Child_vaccination.child_detail(child_id)
--       ON DELETE CASCADE

-- )
-- SELECT * from Child_vaccination.child_detail;

-- SELECT COUNT(*)
-- FROM Child_vaccination.child_detail
-- WHERE gender = 'female' OR gender = 'Female'
CREATE SCHEMA child_vaccination;

CREATE TABLE child_vaccination.vaccination(
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
(4, 'Diphtheria', '01-06-2025', '01-02-2025', 'Mwilisa'),
(5, 'Polio', '02-06-2025', '03-02-2025','Rubaiza'),
(6, 'Measles', '03-04-2025', '04-02-2025', 'Keza'),
(7, 'Tetanus', '04-04-2025', '04-05-2025', 'Carrine'),
(8, 'Polio', '05-04-2025', '05-04-2025', 'Miyagi'),
(9, 'Measles', '06-05-2025', '07-06-2025', 'Angela'),
(10, 'Tuberclosis', '07-06-2025', '08-07-2025', 'Dorothy'),
(11, 'Measles', '09-08-2025', '08-08-2025', 'Fiona'),
(12, 'Tetanus', '10-09-2025', '09-08-2025', 'Jace'),
(13, 'Tuberclosis', '10-10-2025', '10-09-2025', 'Shaline'),
(14, 'Tetanus', '11-10-2025', '10-11-2025', 'Mutuku'),
(15, 'Diphtheria', '12-11-2025', '11-12-2025', 'Rich')

SELECT * FROM child_vaccination.vaccination;

-- SELECT COUNT(DISTINCT child_id) AS vaccinated_previous_year
-- FROM vaccination
-- WHERE date_of_vaccination >= CURDATE() - 1;

SELECT COUNT (DISTINCT child_id) AS child_with_diseases
FROM type_of_vaccination