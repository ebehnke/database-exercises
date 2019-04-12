




-- Find all the employees with the same hire date as employee 101010 using a sub-query.
-- 69 Rows

select *
from employees
where hire_date in (
  select hire_date
  from employees
  where emp_no = '101010');

-- Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique title

select title -- could use distinct instead of group by
from titles
where emp_no in (
  select emp_no
  from employees
  where first_name = 'Aamod'
  )
group by title;

show tables;

select * from employees;
select * from titles;

-- Find all the current department managers that are female.

select first_name, last_name
from employees
where gender = 'F' and
      emp_no in (
        select emp_no
        from dept_manager
        where to_date > now()
        )
;

-- join version
select first_name, last_name
from employees
join dept_manager dm
  on employees.emp_no = dm.emp_no and dm.to_date > now()
where gender = 'F';


# Find all the department names that currently have female managers.

select dept_name
from departments
where dept_no in (
  select dept_no
  from dept_manager
  where to_date > now() and emp_no in (
    select emp_no
    from employees
    where gender = 'f'
    )
);

# Find the first and last name of the employee with the highest salary.

select first_name, last_name
from employees
where emp_no in (
  select emp_no
  from salaries s
  where salary = (select max(salary) from salaries)
  )
;

select max(salary) from salaries;

select salary from salaries order by salary desc;


