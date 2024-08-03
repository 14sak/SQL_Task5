--10 Queries of of Groupby,aggregate,having,where combination(Each query should have three combinations)
select * from patient


--1.the below query tells us how many patient suffering from each medical comdition
select * from patient
	
select medical_condition,count(patient_id) from patient
group by medical_condition;


 
--2.Number of female and male patients under age 20 suffering from cancer
select * from patient
	
select gender,medical_condition,count(patient_id) as"Patient_gender" from patient
where age < 20
group by gender,medical_condition
having medical_condition='Cancer'


	
--3.number of Patients having tests abnormal and sufering from cancer 
select * from patient
select distinct test_results from patient

select test_results,medical_condition,count(patient_id) as "Number_Of_patients_in_Critical_condition" from patient
where medical_condition='Cancer' and test_results='Abnormal'
group by test_results,medical_condition



--4.Following query states Total number of male patients between 18 to 25 age and having blood type as "O-"
--as this patients only need the bloodtype "O-" in emergency situation
select * from patient
select blood_type,age,count(patient_id) as "Total_Patients" from patient
where age between 18 and 25 and gender='Male'
group by blood_type,age
having blood_type='O-'
order by age
 

--5. 10 days data of number of admitted patients ,whose admission type is "Emergency"
select * from patient
select date_of_admission,count(patient_id) as "Admitted_Patients" from patient
where admission_type='Emergency'
group by date_of_admission
order by date_of_admission desc limit 10

	
--6.how many patients of which medical condition are admitted on specific date
select * from patient
select date_of_admission,medical_condition,count(patient_id) from patient
group by date_of_admission,medical_condition
having date_of_admission = '2023-06-03'

--7. Particular Doctor treated how many patients of various medical condition shown below
select * from patient
select doctor,medical_condition,count(patient_id)from patient
where doctor='Matthew Smith'
group by doctor,medical_condition
	

--8. number of patients having the following blood type,
	--also we find out how many patients are universal donar
select * from patient
select blood_type ,count(blood_type) as "Number_of_Patients_having_Bloodtype" from patient
group by blood_type
having blood_type = 'O+'


--9.in the following query,we showed number of patients go for the insurance at which admission type
select * from patient
	
select insurance_provider,admission_type,count(name) as "Patients_Count" from patient
where insurance_provider='UnitedHealthcare'
group by insurance_provider,admission_type



--10.How many patients admitted on which date
select * from patient
	
select date_of_admission,count(patient_id) as "Number_of_Patients"from patient
group by date_of_admission

