

-- Drop tables if they already exist
DROP TABLE IF EXISTS Inpatient;
DROP TABLE IF EXISTS Outpatient;
DROP TABLE IF EXISTS Prescription;
DROP TABLE IF EXISTS Bill;
DROP TABLE IF EXISTS Nurse;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Doctor_Department;



-- Create the Doctor table
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(255),
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(20),
    office VARCHAR(20),
    salary DECIMAL(10,2)
);

-- Create the Department table
CREATE TABLE Department (
    dept_name VARCHAR(255) PRIMARY KEY,
    building VARCHAR(255),
    budget DECIMAL(10,2)
);

-- Create the Doctor_Department table
CREATE TABLE Doctor_Department (
    doctor_id INT,
    dept_name VARCHAR(255),
    PRIMARY KEY (doctor_id, dept_name),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),
    FOREIGN KEY (dept_name) REFERENCES Department(dept_name)
);

-- Create the Patient table
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(255),
    gender VARCHAR(10),
    age INT,
    weight DECIMAL(10,2),
    city VARCHAR(255)
);

-- Create the Inpatient table
CREATE TABLE Inpatient (
    patient_id INT,
    room_no INT,
    date_of_adm DATE,
    date_of_dis DATE,
    PRIMARY KEY (patient_id, room_no),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (room_no) REFERENCES Room(room_no)
);

-- Create the Outpatient table
CREATE TABLE Outpatient (
    patient_id INT PRIMARY KEY,
    date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- Create the Room table
CREATE TABLE Room (
    room_no INT PRIMARY KEY,
    room_type VARCHAR(255),
    status VARCHAR(255)
);

-- Create the Prescription table
CREATE TABLE Prescription (
    prescription_id INT PRIMARY KEY,
    disease_id INT,
    symptom_id INT,
    lab_type VARCHAR(255),
    medicine_qty INT
);

-- Create the Bill table
CREATE TABLE Bill (
    bill_no INT PRIMARY KEY,
    patient_id INT,
    service_charge DECIMAL(10,2),
    no_of_days INT,
    due_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- Create the Nurse table
CREATE TABLE Nurse (
    nurse_id INT PRIMARY KEY,
    nurse_name VARCHAR(255)
);