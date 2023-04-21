# Hospital_database

In this directory there are files for the final project of CPSC 372  Database Fundamentals

Project Title: Hospital Database

## I. Entity-Relationship Diagram: 

file with Big ER: [hospital_er.erd](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_er.erd)

<img width="928" alt="ER_Diagram" src="https://user-images.githubusercontent.com/73262017/233680415-ea2569f6-430d-4a7e-b110-0fcfff11d704.png">


## II. Relational Schema for hospital database 

--- Primary Keys are in _Italic_


* __Patient__ (_patient_id_, patient_name, gender, age, weight, city)
* __Inpatient__ (_patient_id_, _room_no_, _date_of_adm_, date_of_dis, _lab_no_)
* __Outpatient__ (_patient_id_, _date_, _lab_no_)
* __Room__ (_room_no_, room_type, status)
* __Department__ (_dept_name_, building, budget)
* __Prescription__ (_prescription_id_, disease_id, symptom_id, _lab_no_, medicine_qty)
* __Bill__ (_bill_no_, _patient_id_, service_charge, no_of_days, due_date)
* __Nurse__ (_nurse_id_ , nurse_name)

#### Boyce-Codd Normal Form Decomposition or Check 

To check if the relations satisfy BCNF, we need to check for functional dependencies and their dependencies. 
A relation is in BCNF if and only if every determinant is a candidate key. 

For the hospital_database these are the candidate keys for each relation: 

- Patient: {patient_id}
- Inpatient: {patient_id, room_no, date_of_adm}
- Outpatient: {patient_id, date}
- Room: {room_no}
- Department: {dept_name}
- Prescription: {prescription_id}
- Bill: {bill_no}
- Nurse: {nurse_id}
- Doctor: {doctor_id}

We need to check whether there are any functional dependencies that violate BCNF in each relation:

- Patient: There are no non-trivial functional dependencies.
- Inpatient: There are no non-trivial functional dependencies.
- Outpatient: There are no non-trivial functional dependencies.
- Room: There are no non-trivial functional dependencies.
- Department: There are no non-trivial functional dependencies.
- Prescription: There are no non-trivial functional dependencies.
- Bill: There is a functional dependency {patient_id} -> {service_charge, no_of_days, due_date} that violates BCNF, since {patient_id} is not a candidate key. This means that we could have two bills for the same patient, but with different service charges, number of days, and due dates.
- Nurse: There are no non-trivial functional dependencies.
- Doctor: There is a functional dependency {city} -> {dept_name} that violates BCNF, since {city} is not a candidate key. This means that we could have two doctors in the same city, but in different departments.

Therefore, the schema is not in BCNF because of the functional dependencies {patient_id} -> {service_charge, no_of_days, due_date} and {city} -> {dept_name}.



## III. Transaction and Query Executions

1. File for DDL: [hospital_ddl.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_ddl.sql)
2. File for DML: [hospital_seed.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_seed.sql)
3. File with Queries: [hospital_quries.sql](https://github.com/enockniyonkuru/hospital_database/blob/main/hospital_quries.sql)
