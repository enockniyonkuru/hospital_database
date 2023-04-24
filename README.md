# Hospital_database

In this directory there are files for the final project of CPSC 372  Database Fundamentals

Project Title: Hospital Database

### Steps to run the whole projects:

1. Download if you don't have it already [VsCode](https://code.visualstudio.com/)
2. Add the following extensions if they do not exist already: [SQL Lite](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite) and [Big ER](https://marketplace.visualstudio.com/items?itemName=BIGModelingTools.erdiagram)
3. Create an ER diagram through [hospital_er.erd](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_er.erd)
4. Run DDL for the relational schema through: [hospital_ddl.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_ddl.sql)
5. Run DML for the relational schema through: [hospital_seed.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_seed.sql)
6. Run different queries  for the relational schema through: [hospital_queries.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_queries.sql)


## Entity Relationship (ER) Diagram
<img width="910" alt="ER" src="https://user-images.githubusercontent.com/73262017/233898783-fab02f72-ffe7-4806-9723-dbd74026f166.png">


## Relational Schema for hospital database 

--- Primary Keys are in _Italic_


* __Doctor__ (_doctor_id_, doctor_name, gender, age, phone, office, salary) 
* __Department__ (_dept_name_, building, budget) 
* __Doctor_Department__ (_doctor_id, dept_name_) 
* __Patient__ (_patient_id_, patient_name, gender, age, weight, city) 
* __Inpatient__ (_patient_id, room_no_, date_of_adm, date_of_dis) 
* __Outpatient__ (_patient_id_, date) 
* __Room__ (_room_no_, room_type, status) 
* __Prescription__ (_prescription_id_, disease_id, symptom_id, lab_type, medicine_qty) 
* __Bill__ (_bill_no_, patient_id, service_charge, no_of_days, due_date) 
* __Nurse__ (_nurse_id_, nurse_name)



#### Verify the Relational Schema to be in Boyce - Codd normal form (BCNF)

To check if the relations satisfy BCNF, we need to check for functional dependencies and their dependencies. 

A relation is in BCNF if and only if every determinant is a candidate key. 

For the hospital_database these are the candidate keys for each relation: 

- Doctor: doctor_id
- Department: dept_name
- Doctor_Department: (doctor_id, dept_name)
- Patient: patient_id
- Inpatient: (patient_id, room_no)
- Outpatient: patient_id
- Room: room_no
- Prescription: prescription_id
- Bill: bill_no
- Nurse: nurse_id

We need to check whether there are any functional dependencies that violate BCNF in each relation:

* __Doctor__ :  the candidate key is doctor_id. All other attributes are dependent on the candidate key
* __Department__ : the candidate key is dept_name. All other attributes are dependent on the candidate key.
* __Doctor_Department__ : the table only contains the combination of foreign keys of Doctor and Department tables, and both of these foreign keys are a part of the primary key.
* __Patient__ : the candidate key is patient_id. All other attributes are dependent on the candidate key. 
* __Inpatient__ : the candidate key is a combination of patient_id and room_no. All other attributes are dependent on the candidate key.
* __Outpatient__ : the candidate key is patient_id. All other attributes are dependent on the candidate key. 
* __Room__ : the candidate key is room_no. All other attributes are dependent on the candidate key. 
* __Prescription__ : the candidate key is prescription_id. All other attributes are dependent on the candidate key.
* __Bill__ : the candidate key is bill_no. All other attributes are dependent on the candidate key or on patient_id, which is a part of the primary key. 
* __Nurse__: the candidate key is nurse_id. All other attributes are dependent on the candidate key. 



