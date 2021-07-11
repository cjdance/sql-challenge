-- Query 1: List Employee Number, First Name, Last Name, Sex and Salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;


-- Query 2: List FIrst Name, Last Name and Hire Date for all employess hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';


-- Query 3: List the manager of each department including: 
-- department number, department name, manager's employee number, last name and first name

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no;


-- Query 4: List the department of each employee with the following information:
-- employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_employees AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no;


-- Query 5: List first name, last name and sex for employees 
-- whose first name is "Hercules" and last name begins with "B"

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


-- Query 6: List all employees in the sales department, including:
-- Employee number, last name, first name and department name
-- Sales dept_no = d007

SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_employees AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_no = 'd007';


-- Query 7: List all employees in the Sales and Development departments including:
-- Employee number, last_name, first name and department name
-- Sales dept_no = d007, Development dept_no = d005

SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_employees AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_no = 'd007' OR d.dept_no = 'd005';


-- Query 8: In descending order, list the frequency count of employee last names
-- i.e. how many employees share the same last name

SELECT last_name, COUNT(last_name) AS "Frequency Count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Count" DESC;