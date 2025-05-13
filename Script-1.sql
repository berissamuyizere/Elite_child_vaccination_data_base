select * from child_vaccination.childdetail;

CREATE TABLE child_vaccination.medical(
    medical_id SERIAL PRIMARY KEY,
    child_id INTEGER NOT NULL,
    condition VARCHAR(100) NOT NULL,
    status VARCHAR(20) NOT NULL,
    weight NUMERIC(5,2) NOT NULL CHECK (weight>0),
    height NUMERIC(5,2)NOT NULL CHECK (weight>0));

SELECT * FROM child_vaccination.medical ;

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
--  drop table Child_vaccination.child_detail;

SELECT * from Child_vaccination.child_detail;
INSERT INTO child_vaccination.medical(child_id,condition,status,weight,height) VALUES
(01,'underweight','Not bad',15.03,78.04),
(02,'obese','bad',20.04,90.03),
(03,'normal','Good',30.53,98.01),
(04,'normal','Good',50.92,112.80),
(05,'obese','bad',49.75,120.58),
(06,'normal','Good',30.96,129.86),
(07,'obese','Not bad',45.99,90.22),
(08,'underweight','bad',45.68,120.76),
(09,'obese','bad',50.07,123.49),
(10,'normal','Good',33.33,92.01),
(11,'normal','Good',34.12,200.90),
(12,'obese','bad',69.75,150.98),
(13,'bad','Good',49.26,117.96),
(14,'good','Good',30.43,98.01),
(15,'under weight','Good',50.32,212.80)

SELECT * FROM child_vaccination.medical;

SELECT COUNT(*)
FROM (
    select child_id,
    weight / (height * height) AS BMI
    from child_vaccination.medical
) AS bmi_table
WHERE BMI < 18.5


SELECT AVG (weight / (height * height)) AS AVERAGE_BMI
FROM child_vaccination.medical

--DROP TABLE child_vaccination.medical;