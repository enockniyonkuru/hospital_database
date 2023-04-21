# hospital_database

In this directory there are files for the final project of CPSC 372  Database Fundamentals

Project Title: Hospital Database

### I. Entity-Relationship Diagram: 

file with Big ER: hospital_er.erd

### II. Relational Schema for hospital database 

--- Primary Keys are in _Italic_


* __Patient__ (_patient_id_, patient_name, gender, age, weight, city)
* __Inpatient__ (_patient_id_, _room_no_, _date_of_adm_, date_of_dis, _lab_no_)
* __Outpatient__ (_patient_id_, _date_, _lab_no_)
* __Room__ (_room_no_, room_type, status)
* __Department__ (_dept_name_, building, budget)
* __Prescription__ (_prescription_id_, disease_id, symptom_id, _lab_no_, medicine_qty)
* __Bill__ (_bill_no_, _patient_id_, service_charge, no_of_days, due_date)
* __Nurse__ (_nurse_id_ , nurse_name)



#### III. Transaction and Query Executions

1. File for DDL: hospital_ddl.sql
2. File for DML: hospital_seed.sql
3. File with Queries: hospital_quries.sql
