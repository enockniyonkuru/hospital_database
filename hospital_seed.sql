

-- Insert data into Doctor table
INSERT INTO Doctor (doctor_id, doctor_name, gender, age, dept_name, phone, office, city, salary) VALUES
(1, 'John Doe', 'Male', 40, 'Cardiology', '555-1234', '123', 'New York', 120000.00),
(2, 'Jane Smith', 'Female', 35, 'Pediatrics', '555-5678', '456', 'Los Angeles', 100000.00),
(3, 'Bob Johnson', 'Male', 45, 'Surgery', '555-9012', '789', 'Chicago', 150000.00),
(4, 'Sarah Lee', 'Female', 50, 'Oncology', '555-3456', '012', 'Houston', 130000.00),
(1101, 'Dr. James Smith', 'Male', 40, 'Cardiology', '555-1234', 'A102', 'New York', 150000),
(1102, 'Dr. Elizabeth Kim', 'Female', 35, 'Pediatrics', '555-5678', 'B305', 'Los Angeles', 130000),
(1103, 'Dr. David Brown', 'Male', 45, 'Oncology', '555-9876', 'C201', 'Chicago', 170000),
(1104, 'Dr. Jennifer Lee', 'Female', 30, 'Dermatology', '555-4321', 'D101', 'Houston', 120000),
(1105, 'Dr. Michael Johnson', 'Male', 50, 'Orthopedics', '555-2468', 'E202', 'Boston', 180000),
(1106, 'Dr. Sarah Davis', 'Female', 38, 'Neurology', '555-3698', 'F307', 'Miami', 140000),
(1107, 'Dr. William Wilson', 'Male', 55, 'Internal Medicine', '555-5555', 'G103', 'Seattle', 190000),
(1108, 'Dr. Sophia Taylor', 'Female', 42, 'Psychiatry', '555-7777', 'H101', 'Dallas', 160000),
(1109, 'Dr. Robert Martin', 'Male', 48, 'Endocrinology', '555-2468', 'I205', 'San Francisco', 175000),
(1110, 'Dr. Olivia Garcia', 'Female', 33, 'Gastroenterology', '555-8888', 'J303', 'Washington DC', 130000);

-- Insert data into Patient table
INSERT INTO Patient (patient_id, patient_name, gender, age, weight, city) VALUES
(1, 'Tom Jones', 'Male', 50, 80.5, 'New York'),
(2, 'Lisa Smith', 'Female', 25, 55.2, 'Los Angeles'),
(3, 'Mike Johnson', 'Male', 60, 75.8, 'Chicago'),
(4, 'Samantha Lee', 'Female', 30, 62.0, 'Houston'),
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

-- Insert data into Room table
INSERT INTO Room (room_no, room_type, status) VALUES
(101, 'Single', 'Occupied'),
(102, 'Single', 'Occupied'),
(103, 'Single', 'Vacant'),
(104, 'Single', 'Occupied'),
(105, 'Double', 'Occupied'),
(106, 'Double', 'Vacant'),
(107, 'Double', 'Occupied'),
(108, 'Double', 'Occupied'),
(109, 'Ward', 'Occupied'),
(110, 'Ward', 'Vacant');

-- Insert data into Inpatient table
INSERT INTO Inpatient (patient_id, room_no, date_of_adm, date_of_dis, lab_no) VALUES

(101, 101, '2022-01-01', '2022-01-05', 10101),
(102, 102, '2022-02-10', '2022-02-13', 10202),
(103, 103, '2022-03-15', '2022-03-25', 10303),
(104, 104, '2022-04-20', '2022-04-24', 10404),
(105, 105, '2022-05-25', '2022-06-02', 10505),
(106, 106, '2022-06-30', '2022-07-04', 10606),
(107, 107, '2022-08-05', '2022-08-10', 10707),
(108, 108, '2022-09-10', '2022-09-17', 10808),
(109, 109, '2022-10-15', '2022-10-22', 10909),
(110, 110, '2022-11-20', '2022-11-23', 11010);

-- Insert data into Outpatient table
INSERT INTO Outpatient (patient_id, date, lab_no) VALUES
(101, '2022-01-15', 10101),
(102, '2022-02-20', 10202),
(103, '2022-03-25', 10303),
(104, '2022-04-30', 10404),
(105, '2022-06-05', 10505),
(106, '2022-07-10', 10606),
(107, '2022-08-15', 10707),
(108, '2022-09-20', 10808),
(109, '2022-10-25', 10909),
(110, '2022-11-30', 11010);

-- Insert data into Department table
INSERT INTO Department (dept_name, building, budget) VALUES
('Cardiology', 'Main', 1500000),
('Pediatrics', 'West', 1200000),
('Oncology', 'East', 1800000),
('Dermatology', 'North', 1100000),
('Orthopedics', 'South', 1700000),
('Neurology', 'Main', 2000000),
('Internal Medicine', 'West', 1400000),
('Psychiatry', 'East', 1300000),
('Endocrinology', 'North', 1600000),
('Gastroenterology', 'South', 1900000);

-- Insert data into Prescription table
INSERT INTO Prescription (prescription_id, disease_id, symptom_id, lab_no, medicine_qty) VALUES

(1, 1, 2, 101, 20),
(2, 2, 3, 102, 10),
(3, 3, 1, 103, 5),
(4, 1, 3, 104, 15),
(5, 2, 1, 105, 30),
(6, 3, 2, 106, 25),
(7, 1, 1, 107, 12),
(8, 2, 2, 108, 8),
(9, 3, 3, 109, 18),
(10, 1, 2, 110, 22);

-- Insert data into Bill table
INSERT INTO Bill (bill_no, patient_id, service_charge, no_of_days, due_date) VALUES

(1, 101, 200.50, 3, '2022-05-01'),
(2, 102, 300.00, 4, '2022-05-05'),
(3, 103, 1000.00, 7, '2022-05-10'),
(4, 104, 400.25, 5, '2022-05-15'),
(5, 105, 750.00, 6, '2022-05-20'),
(6, 106, 850.75, 8, '2022-05-25'),
(7, 107, 1200.00, 10, '2022-05-30'),
(8, 108, 900.50, 4, '2022-06-01'),
(9, 109, 600.00, 2, '2022-06-05'),
(10, 110, 1500.25, 7, '2022-06-10');


-- Insert data into Nurse table
INSERT INTO Nurse (nurse_id, nurse_name) VALUES
(1, 'Jane'),
(2, 'John'),
(3, 'Sarah'),
(4, 'Mark'),
(5, 'Emily'),
(6, 'Jacob'),
(7, 'Karen'),
(8, 'Brian'),
(9, 'Nina'),
(10, 'David');

select * from Doctor;
select * from Patient;
select * from Room;
select * from Inpatient;
select * from Outpatient;
select * from Department;
select * from Prescription;
select * from Bill;
select * from Nurse;