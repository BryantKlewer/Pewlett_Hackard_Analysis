-- retiring employees with titles
select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from employees as e
left join titles as t
on(e.emp_no = t.emp_no)
where (e.birth_date between '1952-01-01' and '1955-12-31')
order by emp_no;

select * from retirement_titles limit 10;

-- retiring active employees with titles, duplicates entries removed
select distinct on (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
into unique_titles
from retirement_titles as rt
where to_date = '9999-01-01'
order by emp_no, to_date desc;

select * from unique_titles limit 10;

-- number of employees by most recent title that are retiring
select count(title), title
into retiring_titles
from unique_titles
group by title
order by count(title) desc;

select * from retiring_titles;

-- employees eligible to participate in mentorship program
select distinct on (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
into mentorship_eligibility
from employees as e
	inner join dept_employees as de on (e.emp_no = de.emp_no)
	inner join titles as t on (e.emp_no = t.emp_no)
where de.to_date = '9999-01-01' and (e.birth_date between '1965-01-01' and '1965-12-31')
order by emp_no;

select * from mentorship_eligibility limit 10;

-- how many roles will need to be filled as the "silver tsunami" begins
select title, count(title) as count, sum(count(title)) over() as total_count
from unique_titles
group by title
order by count(title) desc;

-- how many mentorship eligible employees
select count(emp_no)
from mentorship_eligibility;

-- number of employees by title for mentorship
select count(title), title
from mentorship_eligibility
group by title
order by count(title) desc;