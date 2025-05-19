select * from child_vaccination.child_detail;
CREATE SCHEMA child_vaccination;
 CREATE TABLE child_vaccination.child_detail(
    child_id SERIAL primary Key,
    childName VARCHAR(100) NOT null,
    date_of_birth DATE not null,
    gender VARCHAR(10)not null,

    CONSTRAINT fk_child
   FOREIGN KEY(child_id)
      REFERENCES Child_vaccination.child_detail(child_id)
      ON DELETE CASCADE

)
SELECT * from Child_vaccination.child_detail;


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
FROM child_vaccination.vaccination
