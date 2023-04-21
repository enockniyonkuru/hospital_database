

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
1. Query involving set comparison and subquery:
This query retrieves the names and ages of patients whose age is greater 
than the age of at least one doctor in the Cardiology department.

*/

select P.patient_name, P.age
from Patient P
where P.age > (
SELECT D.age 
FROM Doctor D 
WHERE D.dept_name = 'Cardiology');


/*
2. Query involving grouping and having:
This query retrieves the department names and number 
of doctors in each department, but only for departments with at least 2 doctors.
*/
SELECT D.dept_name, COUNT(*) AS num_doctors
FROM Doctor D
GROUP BY D.dept_name
HAVING COUNT(*) >= 2;


/*
3. Query involving grouping and having:

This query retrieves the department names and average salaries of doctors 
in each department, but only for departments with an average salary greater than 120000.
*/

SELECT D.dept_name, AVG(D.salary) AS avg_salary
FROM Doctor D
GROUP BY D.dept_name
HAVING AVG(D.salary) > 120000;

/*
4. Query involving subqueries:

This query retrieves the names and weights of patients who have no 
bills due after 2022-08-01 and have not been discharged from the hospital after 2022-08-01.
*/
SELECT P.patient_name, P.weight
FROM Patient P
WHERE P.patient_id NOT IN (SELECT B.patient_id FROM Bill B WHERE B.due_date > '2022-08-01')
AND P.patient_id NOT IN (SELECT I.patient_id FROM Inpatient I WHERE I.date_of_dis > '2022-08-01');


/*
5. Query involving grouping:
This query retrieves the average service charge of bills for each 
room type that has inpatients.
*/

SELECT R.room_type, AVG(B.service_charge) AS avg_charge
FROM Room R
INNER JOIN Inpatient I ON R.room_no = I.room_no
INNER JOIN Bill B ON I.patient_id = B.patient_id
GROUP BY R.room_type;


/*
6. Query involving set operations:
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

10. Query involving Aggregate Functions, 4 relations, :
This query lists the names of all patients who have been treated by a doctor 
in a department whose budget is less than the average budget of all departments.

*/
SELECT distinct p.patient_name
FROM Patient p
INNER JOIN Bill b ON p.patient_id = b.patient_id
INNER JOIN Doctor d ON p.city = d.city
INNER JOIN Department dp ON d.dept_name = dp.dept_name
WHERE dp.budget < (SELECT AVG(budget) FROM Department);


/*
11.
This query finds the names and ages of all patients who were treated by 
a male doctor and have been admitted to the inpatient ward. 
*/

SELECT distinct p.patient_name, p.age
FROM Patient p
INNER JOIN Inpatient i ON p.patient_id = i.patient_id
INNER JOIN Doctor d ON p.city = d.city
WHERE d.gender = 'Male';

/*
12.Query involving outer join, and aggregate function:
This query finds the total salary expense of the hospital, grouped by department.
*/
SELECT d.dept_name, SUM(doctor.salary) AS total_salary_expense
FROM Department d
LEFT JOIN Doctor ON d.dept_name = Doctor.dept_name
GROUP BY d.dept_name;

/*
13. 
This query lists the names and ages of all patients who have been treated 
by a doctor in a department with a budget greater than $500,000.

*/

SELECT distinct p.patient_name, p.age
FROM Patient p
INNER JOIN Bill b ON p.patient_id = b.patient_id
INNER JOIN Doctor d ON p.city = d.city
INNER JOIN Department dp ON d.dept_name = dp.dept_name
WHERE dp.budget > 500000;


/*

14. 
This query retrieves the names and ages of patients who have a bill record 
and whose attending doctor is younger than 50 years old and practices in 
the same city as the patient.
*/
SELECT distinct p.patient_name, p.age
FROM Patient p
INNER JOIN Bill b ON p.patient_id = b.patient_id
INNER JOIN Doctor d ON p.city = d.city
WHERE d.age < 50;


