# hospital_database



Relational Schema for hospital database 
* Patient (patient_id, patient_name, gender, age, weight, city)
* Inpatient (patient_id, room_no, date_of_adm, date_of_dis, lab_no)
* Outpatient (patient_id, date, lab_no)
* Room (room_no, room_type, status)
* Department (dept_name, building, budget)
* Prescription (prescription_id, disease_id, symptom_id, lab_no, medicine_qty)
* Bill (bill_no, patient_id, service_charge, no_of_days, due_date)
* Nurse (nurse_id , nurse_name)
