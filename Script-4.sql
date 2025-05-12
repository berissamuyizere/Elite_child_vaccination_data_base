create schema child_vaccination;


CREATE TABLE child_vaccination.childdetail(
    child_id SERIAL primary Key,
    childName VARCHAR(100) NOT null,
    date_of_birth DATE not null,
    gender VARCHAR(10)not null
);
INSERT INTO child_vaccination.childdetail(childName,date_of_birth,gender)
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
       ('Dorothy','02-02-2022','male');
SELECT * from child_vaccination.childdetail;



create table child_vaccination.parent(
parent_id  SERIAL primary key,
name VARCHAR(10),
phone_number VARCHAR(10)
);

INSERT  INTO  child_vaccination.parent(name, phone_number)VALUES
('Kalisa', '078347414'),
('Kamali', '079347416'),
('Kamariza','0799474147'),
('Jane', '078347426'),
('Joy', '0783474261'),
('Janette', '078647426'),
('Jane', '078347926'),
('Joyce', '078347426'),
('Joyline', '078554742'),
('Beza', '078342426'),
('Kamikazi', '072247426'),


SELECT * FROM child_vaccination.parent

DROP TABLE child_vaccination.parent;

create table child_vaccination.parent_child(
parent_child_id  SERIAL primary key,
parent_id VARCHAR(10) not null,
child_id VARCHAR(10) not null,
CONSTRAINT fk_childdetail
    FOREIGN KEY(child_id)
    REFERENCES child_vaccination.childdetail(child_id),
CONSTRAINT fk_parent
    FOREIGN KEY(parent_id)
    REFERENCES child_vaccination.parent(parent_id)
)

DROP TABLE child_vaccination.parent;


insert into child_vaccination.parent_child( parent_id,child_id)values
('A01','Jane', '078347414'),
('A02','James', '078347419'),
('A03','Janet', '078347417')


