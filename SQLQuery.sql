
CREATE DATABASE  InnerPeace;
USE [InnerPeace];
GO


CREATE SCHEMA [schM];
GO



CREATE TABLE Consultation
(
con_id int PRIMARY KEY,
question varchar(5000),
answer varchar(5000),
create_date date,
question_date date,
answer_date date,
Patient_id int  , 
Doctor_id int ,
illness_id int ,
 
FOREIGN KEY (Patient_id)
REFERENCES Patient(Patient_id),


FOREIGN KEY (Doctor_id)
REFERENCES Doctor(Doctor_id),


FOREIGN KEY (illness_id)
REFERENCES illness(illness_id)
 )

CREATE TABLE Doctor(
Doctor_id int PRIMARY KEY,
Doctor_name varchar(50),
email varchar(50),
certification varchar(50),
clinic_site varchar(50)

)
CREATE TABLE Patient(
Patient_id int PRIMARY KEY,
mobile varchar(50),
country varchar(50),
email varchar(50),
city varchar(50),
Patient_name varchar(50),
password varchar(50)

)
CREATE TABLE illness(
illness_id int PRIMARY KEY,
illness_title varchar(50)
)
