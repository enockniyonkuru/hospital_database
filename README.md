# Hospital_database

In this directory there are files for the final project of CPSC 372  Database Fundamentals

## Database Project: Hospital Database

### Domain Description

 The Hospital Database is designed to store and manage information related to a typical hospital. This database will include information about a patient, doctor, nurse, and will help to monitor the hospital operations including doctor departments, bills paid and details regarding each patient. This will help to keep trac of each patient’s history when they visit the hospital again for the doctor to know the past prescriptions and visits. This database will also help in the finances of the hospital by managing how much patients paid and the budgets of departments. It will also help the administration of the hospital with logistics on how the rooms are being administered in the hospital, and the operations of doctors and nurses in the hospital. 


**Entities and Relationships** 

The Hospital Database will include several key entities, each of which will be related to one another in various ways. These entities include: 

* **Doctor**: This table stores information about individual doctors, including their unique identifier, name, gender, age, phone number, office location, and salary. Each doctor will be assigned a unique identifier to ensure that their information, and patients they treated can be easily tracked and accessed easily. 
* **Department**: This table contains data related to the different departments in the hospital, including their department name, building, and budget. Each department will be assigned a unique identifier to ensure that their information can be easily tracked and accessed easily.
* **Doctor_Department**: This table is a junction table that links doctors to the departments they work in. It contains the doctor ID and department name, allowing for efficient queries about which doctors work in which departments.
* **Patient**: This table stores data related to patients, including their unique identifier, name, gender, age, weight, and city. It is a crucial table for maintaining patient records and tracking their medical history.
* **Inpatient**: This table contains details of patients who have been admitted to the hospital, such as their patient ID, room number, admission, and discharge dates. It helps hospital staff monitor patient care and manage bed allocation.
* **Outpatient**: This table stores information about patients who visit the hospital for outpatient services. It includes their patient ID, the date of their visit. It is useful for tracking patient visits and managing appointments.
* **Room**: This table stores information about the various rooms available in the hospital, including their room number, type, and status. It helps hospital staff manage bed allocation and ensure that rooms are available for patients when needed.
* **Prescription**: This table stores information about prescriptions, including their unique identifier, the associated disease and symptom IDs, lab type, and medicine quantity. It helps hospital staff manage medication for patients and track their prescriptions.
* **Bill**: This table contains details of bills issued to patients, including their unique identifier, patient ID, service charge, number of days, and due date. It is useful for managing patient payments and tracking outstanding bills.
* **Nurse**: This table stores information about the hospital's nursing staff, including their unique identifier and name. It helps hospital staff manage nursing resources and track the availability of nurses.


### Steps to run the whole projects:

1. Download if you don't have it already [VsCode](https://code.visualstudio.com/)
2. Add the following extensions if they do not exist already: [SQL Lite](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite) and [Big ER](https://marketplace.visualstudio.com/items?itemName=BIGModelingTools.erdiagram)
3. Create an ER diagram through [hospital_er.erd](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_er.erd)
4. Run DDL for the relational schema through: [hospital_ddl.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_ddl.sql)
5. Run DML for the relational schema through: [hospital_seed.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_seed.sql)
6. Run different queries  for the relational schema through: [hospital_queries.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_queries.sql)


## Entity Relationship (ER) Diagram
<img width="1181" alt="ER" src="https://user-images.githubusercontent.com/73262017/233915886-9ee386f8-5584-43a1-9011-721b9fbc99b6.png">


## Relational Schema for hospital database 

--- Primary Keys are in _Italic_

* __Doctor__ (***doctor_id***, doctor_name, gender, age, phone, office, salary) 
* __Department__ (***dept_name***, building, budget) 
* __Doctor_Department__ (***doctor_id, dept_name***) 
* __Patient__ (***patient_id***, patient_name, gender, age, weight, city) 
* __Inpatient__ (***patient_id, room_no***, date_of_adm, date_of_dis) 
* __Outpatient__ (***patient_id***, date) 
* __Room__ (***room_no***, room_type, status) 
* __Prescription__ (***prescription_id***, disease_id, symptom_id, lab_type, medicine_qty) 
* __Bill__ (***bill_no***, patient_id, service_charge, no_of_days, due_date) 
* __Nurse__ (***nurse_id***, nurse_name)



#### Verify the Relational Schema to be in Boyce - Codd normal form (BCNF)

To check if the relations satisfy BCNF, we need to check for functional dependencies and their dependencies. 

A relation is in BCNF if and only if every determinant is a candidate key. 


Initial Relational Schema before BCNF:

* __Doctor__ (***doctor_id***,doctor_id, doctor_name, gender, age, dept_name, phone, office, salary) 
* __Department__ (***dept_name***, building, budget) 
* __Patient__ (***patient_id***, patient_name, gender, age, weight, city) 
* __Inpatient__ (***patient_id, room_no***, date_of_adm, date_of_dis) 
* __Outpatient__ (***patient_id***, date) 
* __Room__ (***room_no***, room_type, status) 
* __Prescription__ (***prescription_id***, disease_id, symptom_id, lab_type, medicine_qty) 
* __Bill__ (***bill_no***, patient_id, service_charge, no_of_days, due_date) 
* __Nurse__ (***nurse_id***, nurse_name)


***Checking BCNF & Decomposition***

* __Doctor__ : The doctor table has a dependecy on the department name attribute, which means that there might be multiple doctors with the same name and other attributes but working in differnt departnemts. The condition for BCNF is that each attribute should have a single value, so to resolve this we need to split the Doctor table into two tables:

 - __Doctor__ (***doctor_id***, doctor_name, gender, age, phone, office, salary) 
 - __Doctor_Department__ (***doctor_id, dept_name***)

Therefore,  for Doctor table the candidate key is doctor_id. All other attributes are dependent on the candidate key.

and for Doctor_Department the table only contains the combination of foreign keys of Doctor and Department tables, and both of these foreign keys are a part of the primary key.


* __Department__ : the candidate key is dept_name. All other attributes are dependent on the candidate key.
* __Patient__ : the candidate key is patient_id. All other attributes are dependent on the candidate key. 
* __Inpatient__ : the candidate key is a combination of patient_id and room_no. All other attributes are dependent on the candidate key.
* __Outpatient__ : the candidate key is patient_id. All other attributes are dependent on the candidate key. 
* __Room__ : the candidate key is room_no. All other attributes are dependent on the candidate key. 
* __Prescription__ : the candidate key is prescription_id. All other attributes are dependent on the candidate key.
* __Bill__ : the candidate key is bill_no. All other attributes are dependent on the candidate key or on patient_id, which is a part of the primary key. 
* __Nurse__: the candidate key is nurse_id. All other attributes are dependent on the candidate key. 

For the hospital_database these are the candidate keys for each relation: 


In conclusion all our tables in the relational schema are in BCNF 



