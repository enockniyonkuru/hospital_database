

/*

Here are sample scripts which fullfills the following requirements
- At least two queries should involve four or more relations. 
- At least one query should involve outer joins.
- At least one query should use an aggregate function. 
- At least three queries should use subqueries in a non-trivial way.
- One of those should use a set comparison (e.g. > some) 
- At least two queries should use grouping.
- At least one of those should use having. 
- At least one query should use set operations.

*/
 

/*

This query retrieves the names and ages of patients whose age is greater 
than the age of at least one doctor in the Cardiology department.

*/

select P.patient_name, P.age
from Patient P
where P.age > (
SELECT D.age 
FROM Doctor D, Doctor_Department DD
WHERE D.doctor_id = DD.doctor_id and DD.dept_name = 'Cardiology') ;

/*
This query retrieves the names and weights of patients who have no 
bills due after 2022-05-01 and have not been discharged from the hospital after 2022-05-01.
*/
SELECT P.patient_name, P.weight
FROM Patient P
WHERE P.patient_id NOT IN (SELECT B.patient_id FROM Bill B WHERE B.due_date > '2022-05-01')
AND P.patient_id NOT IN (SELECT I.patient_id FROM Inpatient I WHERE I.date_of_dis > '2022-05-01');


/*

This query retrieves the average service charge of bills for each 
room type that has inpatients.
*/

SELECT R.room_type, AVG(B.service_charge) AS avg_charge
FROM Room R
INNER JOIN Inpatient I ON R.room_no = I.room_no
INNER JOIN Bill B ON I.patient_id = B.patient_id
GROUP BY R.room_type;


/*
This query retrieves the IDs and names of patients who were either 
inpatients or outpatients between January and June 2022, along with 
a column indicating their status. The results are combined with the UNION operator.
*/
SELECT P.patient_id, P.patient_name, 'inpatient' AS status
FROM Patient P
INNER JOIN Inpatient I ON P.patient_id = I.patient_id
WHERE I.date_of_adm BETWEEN '2022-01-01' AND '2022-06-31'
UNION
SELECT P.patient_id, P.patient_name, 'outpatient' AS status
FROM Patient P
INNER JOIN Outpatient O ON P.patient_id = O.patient_id
WHERE O.date BETWEEN '2022-01-01' AND '2022-06-31';



/*
This query retrieves the names and ages of all patients who weigh more than 
150 pounds.

*/
SELECT patient_name, age 
FROM Patient 
WHERE weight > 150;

/*
This query retrieves the department name, building, and 
budget for the department(s) that have the highest budget.

*/

SELECT dept_name, building, budget 
FROM Department 
WHERE budget = (SELECT MAX(budget) FROM Department);

/*
This query retrieves the names and salaries of doctors 
who work in departments that have a budget greater than $1,000,000.

*/
SELECT doctor_name, salary 
FROM Doctor 
WHERE doctor_id IN 
   (SELECT doctor_id 
    FROM Doctor_Department 
    WHERE dept_name IN 
        (SELECT dept_name 
         FROM Department 
         WHERE budget > 1000000));


/*
This query retrieves the names and ages of all patients who have been 
both inpatients and outpatients.

*/
SELECT patient_name, age 
FROM Patient 
WHERE patient_id IN 
   (SELECT patient_id 
    FROM Inpatient 
    WHERE patient_id IN 
        (SELECT patient_id 
         FROM Outpatient));

/*
This query retrieves the names of all patients who have been inpatients 
in room 101 but have never been inpatients in any other room.

*/
SELECT patient_name 
FROM Patient 
WHERE patient_id IN 
   (SELECT patient_id 
    FROM Inpatient 
    WHERE room_no = 101 
    GROUP BY patient_id 
    HAVING COUNT(*) = 1);

/*
This query retrieves the names of all doctors who work in departments 
that have a budget greater than the average budget of all departments.

*/
SELECT doctor_name 
FROM Doctor 
WHERE doctor_id IN 
   (SELECT doctor_id 
    FROM Doctor_Department 
    WHERE dept_name IN 
        (SELECT dept_name 
         FROM Department 
         WHERE budget > 
            (SELECT AVG(budget) FROM Department)));


/*

This query selects the names of all doctors and their 
corresponding departments from the Doctor and Doctor_Department tables, 
where the doctor's ID matches that in the Doctor_Department table.

*/
SELECT d.doctor_name, dd.dept_name
FROM Doctor d, Doctor_Department dd
WHERE d.doctor_id = dd.doctor_id;

/*
This query selects the count of unique patient IDs from 
the Inpatient table, where the patient ID is not found in 
the Patient ID column of the Outpatient table.

*/
SELECT COUNT(DISTINCT patient_id) 
FROM Inpatient 
WHERE patient_id NOT IN (SELECT patient_id FROM Outpatient);

/*
This query selects the department name and average salary of doctors 
in each department from the Doctor and Doctor_Department tables. 
The data is grouped by department name and  
sorted in ascending order by department name.
*/
SELECT dd.dept_name, AVG(d.salary)
FROM Doctor d, Doctor_Department dd
WHERE d.doctor_id = dd.doctor_id
GROUP BY dd.dept_name
ORDER BY dd.dept_name ASC;


/*
This query selects the room number and room type from the Room table 
where the status of the room is currently Vacant.
*/
SELECT room_no, room_type
FROM Room
WHERE status = 'Vacant';



