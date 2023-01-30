USE employees;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY d.dept_name;


SELECT t.title AS title, COUNT(*) as Total
FROM employees as e
         JOIN titles as t
              on e.emp_no = t.emp_no
         JOIN dept_emp de
              on e.emp_no = de.emp_no
WHERE t.to_date = '9999-01-01'
  AND de.dept_no = 'd009'
AND de.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY Total DESC;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager, s.salary as Salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         Join salaries as s
              on e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


# d009