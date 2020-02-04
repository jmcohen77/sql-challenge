SELECT emp.emp_no,
		emp.last_name,
		emp.first_name,
		emp.gender,
		sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
	ON (emp.emp_no = sal.emp_no);
	
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT dept_manager.dept_no,
		departments.dept_name,
		dept_manager.emp_no,
		employees.first_name,
		employees.last_name,
		dept_manager.from_date,
		dept_manager.to_date
FROM dept_manager
	INNER JOIN departments
	on (dept_manager.dept_no = departments.dept_no)
	INNER JOIN employees
	on (dept_manager.emp_no = employees.emp_no)
	ORDER BY dept_manager.to_date DESC;
	
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN departments AS dp ON
dp.dept_no = d.dept_no;

SELECT * FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN departments AS dp ON
dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN departments AS dp ON
dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE 'Development'
OR dp.dept_name LIKE 'Sales';

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;