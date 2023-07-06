DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctor_roster
(
  doctor_id SERIAL PRIMARY KEY,
  dr_name TEXT NOT NULL,
  pt_number INT 
);

CREATE TABLE pt_roster(
    patient_id SERIAL PRIMARY KEY,
    pt_name TEXT NOT NULL,
    dr_number INT,
    pt_diagnoses TEXT NOT NULL
);

INSERT INTO doctor_roster
  (doctor_id,dr_name, pt_number)
VALUES
    ('1','Dr.Tom','3'),
    ('2','Dr.Tam','2'),
    ('3','Dr.Tim','1'),
    ('4','Dr.Timmy','3'),
    ('5','Dr.Tin','1');

INSERT INTO pt_roster
    (patient_id, pt_name, dr_number, pt_diagnoses)
VALUES
    ('1','Som','1','No Disease'),
    ('2','Sam','1', 'Diabetes, High Cholesterol'),
    ('3','Sim','1', 'High Blood Pressure'),
    ('4','Sammy','1','No Disease'),
    ('5','Sin','2','Anxiety, Pregnant'),
    ('6','Bob','1','Diabetes'),
    ('7','Bobbi','2','Anxiety, Pregnant'),
    ('8','Bill','1','Depression'),
    ('9','Billy','1','High Cholesterol'),
    ('10','Bom','1','High Blood Pressure');