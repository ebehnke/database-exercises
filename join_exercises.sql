use employees;

select from_date
from titles
join departments
on dept_name = title
limit 10;

show create table employees;
show create table departments;

select concat(employees.first_name, " ", employees.last_name) as "Department Manager", employees.departments.dept_name as "Depeartment Name" from employees;

select d.dept_name as "Department Name",
       concat(e.first_name, " ", e.last_name) as "Department Manager"
from employees as e
join dept_manager as dm
  on e.emp_no = dm.emp_no
join departments as d
  on dm.dept_no = d.dept_no
where dm.to_date > now() and e.gender = 'F'
order by d.dept_name asc;



select * from departments;
select * from employees;
select * from dept_emp;


CREATE TABLE `dept_emp` (
                          `emp_no` int(11) NOT NULL,
                          `dept_no` char(4) NOT NULL,
                          `from_date` date NOT NULL,
                          `to_date` date NOT NULL,
                          PRIMARY KEY (`emp_no`,`dept_no`),
                          KEY `emp_no` (`emp_no`),
                          KEY `dept_no` (`dept_no`),
                          CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
                          CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `departments` (
                             `dept_no` char(4) NOT NULL,
                             `dept_name` varchar(40) NOT NULL,
                             PRIMARY KEY (`dept_no`),
                             UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `employees` (
                           `emp_no` int(11) NOT NULL,
                           `birth_date` date NOT NULL,
                           `first_name` varchar(14) NOT NULL,
                           `last_name` varchar(16) NOT NULL,
                           `gender` enum('M','F') NOT NULL,
                           `hire_date` date NOT NULL,
                           PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


select t.title as "Title", count(t.title) as "Count"
from titles t
join dept_emp de on de.emp_no = t.emp_no
# join departments d on d.dept_no =
where de.dept_no = 'd009' and t.to_date > now() and de.to_date > now()
group by t.title;

select d.dept_name as "Department Name",
       concat (e.first_name, ' ', e.last_name),
       s.salary as "Salary"
from departments d
join employees e
join salaries s;


select d.dept_name as "Department Name",
       concat(e.first_name, " ", e.last_name) as "Name",
       s.salary as "Salary"
from employees as e
       join dept_manager as dm
            on e.emp_no = dm.emp_no
       join departments as d
            on dm.dept_no = d.dept_no
       join salaries s
            on s.emp_no = e.emp_no
where dm.to_date > now() and s.to_date > now()
order by d.dept_name asc;


select concat(e.first_name, ' ', e.last_name) as "Department Manager",
       d.dept_name as "Department Name",
#        ?? as 'Manager Name'
from employees as e
       join dept_manager as dm
            on e.emp_no = dm.emp_no
       join departments as d
            on dm.dept_no = d.dept_no
where dm.to_date > now() and e.gender = 'F'
order by d.dept_name asc;

select concat(e.first_name, ' ', e.last_name) as "Employee Name",
       d.dept_name as "Department Name",
       concat(managers.first_name, ' ', managers.last_name)  as 'Manager Name'
          from employees e
          join dept_emp de on e.emp_no = de.emp_no
          join departments d on de.dept_no = d.dept_no
          join dept_manager dm on dm.dept_no = de.dept_no
          join employees managers on managers.emp_no = dm.emp_no
where dm.to_date > now()
  and de.to_date > now()
order by d.dept_name;




select
       concat(m.first_name, ' ', m.last_name),
       d.dept_name as "Department Name",
       concat(e.first_name, " ", e.last_name) as "Department Manager"
         from employees as e
         join dept_manager as dm
              on e.emp_no = dm.emp_no
         join departments as d
              on dm.dept_no = d.dept_no
         join employees as m
              on m.emp_no = dm.emp_no
where dm.to_date > now() and
order by d.dept_name asc;
