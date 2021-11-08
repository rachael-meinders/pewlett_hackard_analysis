-- DELIVERABLE 1

-- select empl #, first and last name from employees
SELECT emp_no, first_name, last_name 
FROM employees;

-- select title, from and to date from titles
SELECT title, from_date, to_date
FROM titles;

-- select titles of employees eligible for retirement
DROP TABLE retirement_titles;
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND  '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- get # of unique titles 
--DROP TABLE retiring_titles;
SELECT COUNT(ut.title), title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY count DESC;

-- DELIVERABLE 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (t.emp_no = e.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31');

-- mentorship eligible by title
SELECT COUNT(me.title), title
INTO mentorship_elig_title
FROM mentorship_eligibility as me
GROUP BY title
ORDER BY count DESC;


