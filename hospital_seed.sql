
-- Inserting into Doctor table
INSERT INTO Doctor (doctor_id, doctor_name, gender, age, phone, office, salary)  VALUES 
(1, 'John Smith', 'Male', 40, '555-1234', 'A101', 100000.00),
(2, 'Jane Doe', 'Female', 35, '555-5678', 'B202', 90000.00),
(3, 'Bob Johnson', 'Male', 50, '555-9876', 'C303', 120000.00),
(4, 'Samantha Lee', 'Female', 28, '555-4321', 'D404', 80000.00),
(5, 'Michael Chen', 'Male', 45, '555-8765', 'E505', 110000.00),
(6, 'Emily Davis', 'Female', 32, '555-3456', 'F606', 95000.00),
(7, 'David Kim', 'Male', 60, '555-2345', 'G707', 150000.00),
(8, 'Karen Wilson', 'Female', 42, '555-7890', 'H808', 105000.00),
(9, 'Steve Jones', 'Male', 55, '555-5678', 'I909', 130000.00),
(10, 'Jennifer Brown', 'Female', 38, '555-8765', 'J1010', 100000.00),
(11, 'Daniel Kim', 'Male', 48, '555-1111', 'K1111', 115000.00),
(12, 'Stephanie Lee', 'Female', 30, '555-2222', 'L1212', 85000.00),
(13, 'Kevin Chen', 'Male', 42, '555-3333', 'M1313', 105000.00),
(14, 'Amy Park', 'Female', 29, '555-4444', 'N1414', 85000.00),
(15, 'William Lee', 'Male', 52, '555-5555', 'O1515', 125000.00),
(16, 'Grace Kim', 'Female', 36, '555-6666', 'P1616', 95000.00),
(17, 'Jonathan Lee', 'Male', 45, '555-7777', 'Q1717', 110000.00),
(18, 'Rachel Choi', 'Female', 31, '555-8888', 'R1818', 90000.00),
(19, 'Andrew Park', 'Male', 43, '555-9999', 'S1919', 115000.00),
(20, 'Hannah Kim', 'Female', 39, '555-0000', 'T2020', 100000.00);

-- Inserting into Department table
INSERT INTO Department (dept_name, building, budget) VALUES 
('Cardiology', 'A', 1000000.00),
('Pediatrics', 'B', 800000.00),
('Oncology', 'C', 1200000.00),
('Neurology', 'D', 900000.00),
('Dermatology', 'E', 600000.00),
('Psychiatry', 'F', 700000.00),
('Surgery', 'G', 1500000.00),
('Emergency Medicine', 'H', 500000.00),
('Anesthesiology', 'I', 1000000.00),
('Radiology', 'J', 1100000.00);

-- Inserting into Doctor_Department table
INSERT INTO Doctor_Department (doctor_id, dept_name) VALUES 
(1, 'Cardiology'),
(2, 'Pediatrics'),
(3, 'Oncology'),
(4, 'Neurology'),
(5, 'Dermatology'),
(6, 'Psychiatry'),
(7, 'Surgery'),
(8, 'Emergency Medicine'),
(9, 'Anesthesiology'),
(10, 'Dermatology'),
(11, 'Cardiology'),
(12, 'Pediatrics'),
(13, 'Oncology'),
(14, 'Dermatology'),
(15, 'Dermatology'),
(16, 'Psychiatry'),
(17, 'Surgery'),
(18, 'Emergency Medicine'),
(19, 'Anesthesiology'),
(20, 'Radiology');

-- Inserting into Patient table

INSERT INTO Patient (patient_id, patient_name, gender, age, weight, city) VALUES 
(1, 'John Smith', 'Male', 35, 180, 'New York'),
(2, 'Jane Doe', 'Female', 25, 130, 'Los Angeles'),
(3, 'Michael Johnson', 'Male', 45, 220, 'Chicago'),
(4, 'Emily Brown', 'Female', 55, 150, 'Houston'),
(5, 'David Lee', 'Male', 20, 160, 'San Francisco'),
(6, 'Amanda Hernandez', 'Female', 30, 135, 'Miami'),
(7, 'Robert Davis', 'Male', 40, 190, 'Philadelphia'),
(8, 'Jennifer White', 'Female', 50, 145, 'Seattle'),
(9, 'Daniel Kim', 'Male', 60, 200, 'Boston'),
(10, 'Elizabeth Miller', 'Female', 70, 120, 'Washington DC'),
(11, 'Tom Jones', 'Male', 50, 80.5, 'New York'),
(12, 'Lisa Smith', 'Female', 25, 55.2, 'Los Angeles'),
(13, 'Mike Johnson', 'Male', 60, 75.8, 'Chicago'),
(14, 'Samantha Lee', 'Female', 30, 62.0, 'Houston'),
(101, 'John Doe', 'Male', 35, 75, 'New York'),
(102, 'Jane Smith', 'Female', 28, 60, 'Los Angeles'),
(103, 'Bob Johnson', 'Male', 45, 90, 'Chicago'),
(104, 'Sarah Lee', 'Female', 32, 55, 'Houston'),
(105, 'Michael Davis', 'Male', 60, 80, 'Boston'),
(106, 'Emma Brown', 'Female', 24, 50, 'Miami'),
(107, 'William Wilson', 'Male', 55, 85, 'Seattle'),
(108, 'Olivia Taylor', 'Female', 40, 65, 'Dallas'),
(109, 'James Martin', 'Male', 48, 95, 'San Francisco'),
(110, 'Sophia Jackson', 'Female', 30, 70, 'Washington DC');

-- Inserting into Inpatient table

INSERT INTO Inpatient (patient_id, room_no, date_of_adm, date_of_dis) VALUES 
(1, 101, '2022-04-10', '2022-04-15'),
(2, 102, '2022-04-11', '2022-04-13'),
(3, 103, '2022-04-12', '2022-04-18'),
(4, 104, '2022-04-13', '2022-04-16'),
(5, 105, '2022-04-14', '2022-04-17'),
(6, 106, '2022-04-15', '2022-04-19'),
(7, 107, '2022-04-16', '2022-04-20'),
(8, 108, '2022-04-17', '2022-04-21'),
(9, 109, '2022-04-18', '2022-04-23'),
(10, 110, '2022-05-19', '2022-05-22'),
(104, 104, '2022-06-13', '2022-07-16'),
(105, 105, '2022-05-14', '2022-08-17'),
(106, 106, '2022-08-15', '2022-10-19');

-- Inserting into Outpatient table

INSERT INTO Outpatient (patient_id, date) VALUES 
(101, '2022-04-10'),
(102, '2022-04-11'),
(103, '2022-04-12'),
(104, '2022-04-13'),
(105, '2022-04-14'),
(106, '2022-04-15'),
(107, '2022-04-16'),
(108, '2022-04-17'),
(109, '2022-04-18'),
(14, '2022-05-19'),
(5, '2022-06-14'),
(6, '2022-07-15'),
(7, '2022-08-16'),
(8, '2022-09-17');

-- Inserting into  Room table
INSERT INTO Room (room_no, room_type, status) VALUES
(101, 'Private', 'Occupied'),
(102, 'Semi-Private', 'Vacant'),
(103, 'General', 'Occupied'),
(104, 'Private', 'Vacant'),
(105, 'General', 'Vacant'),
(106, 'Semi-Private', 'Occupied'),
(107, 'Private', 'Vacant'),
(108, 'General', 'Occupied'),
(109, 'Semi-Private', 'Vacant');

-- Inserting into  Prescription table
INSERT INTO Prescription (prescription_id, disease_id, symptom_id, lab_type, medicine_qty) VALUES
(1, 101, 201, 'Blood test', 5),
(2, 102, 202, 'Urine test', 10),
(3, 103, 203, 'CT scan', 3),
(4, 104, 204, 'X-ray', 7),
(5, 105, 205, 'MRI', 2),
(6, 106, 206, 'ECG', 4),
(7, 107, 207, 'Blood test', 6),
(8, 108, 208, 'Urine test', 8),
(9, 109, 209, 'CT scan', 2),
(10, 110, 210, 'X-ray', 9);

-- Inserting into  Bill table
INSERT INTO Bill (bill_no, patient_id, service_charge, no_of_days, due_date) VALUES
(101, 101, 500, 3, '2023-05-01'),
(102, 102, 800, 5, '2023-05-05'),
(103, 103, 1000, 7, '2023-05-07'),
(104, 104, 750, 2, '2023-05-02'),
(105, 105, 1200, 4, '2023-05-04'),
(106, 6, 600, 1, '2023-05-01'),
(107, 7, 900, 6, '2023-05-06'),
(108, 8, 450, 2, '2023-05-02'),
(109, 9, 650, 3, '2023-05-03'),
(110, 10, 1500, 10, '2023-05-10');

-- Inserting into Nurse table
INSERT INTO Nurse (nurse_id, nurse_name) VALUES
(301, 'John Smith'),
(302, 'Jane Doe'),
(303, 'William Lee'),
(304, 'Maria Garcia'),
(305, 'Michael Johnson'),
(306, 'Sara Kim'),
(307, 'David Brown'),
(308, 'Emily Davis'),
(309, 'Jacob Wilson'),
(310, 'Lucy Hernandez');


select * from Doctor;
select * from Patient;
select * from Room;
select * from Inpatient;
select * from Outpatient;
select * from Doctor_Department;
select * from Department;
select * from Prescription;
select * from Bill;
select * from Nurse;
