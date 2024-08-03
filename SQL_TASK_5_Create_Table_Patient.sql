create table patient(
	Patient_id serial primary key,
	Name varchar(100),
    Age	int,
	Gender varchar(50),
    Blood_Type varchar(50),
    Medical_Condition varchar(100),
    Date_of_Admission date,
    Doctor varchar(100),
    Hospital varchar(200),
    Insurance_Provider varchar(100),
    Billing_Amount float,	
    Room_Number	int,
    Admission_Type	varchar(100),
    Discharge_Date date	,
    Medication varchar(100),
    Test_Results varchar(200)
);

select * from patient;
insert into patient(Name, Age, Gender, Blood_Type, Medical_Condition, Date_of_Admission, Doctor,
	Hospital, Insurance_Provider, Billing_Amount, Room_Number, Admission_Type, 
	Discharge_Date, Medication, Test_Results								
)
values
 ('Bobby JacksOn',30,'Male','B-','Cancer','2024-01-31','Matthew Smith','Sons and Miller',
    'Blue Cross', 18856.28131, 328,'Urgent','2024-02-02','Paracetamol','Normal');

select * from patient;

copy patient from 'D:\patient.csv' delimiter ','csv header;

select * from patient;