use employees;

show tables;

show tables;

select database();

describe employees;

select first_name
from employees
where first_name in ('Irena','Vidya','Maya');

select last_name from employees where last_name like 'e%';

select last_name, hire_date from employees where hire_date like "199%";

describe employees;
-- emp_no, birth_date, first_name, last_name, gender, hire_date

select birth_date from employees where birth_date like "%12-25";

select last_name from employees where last_name like "%q%";

select first_name
from employees
where first_name = 'Irena'
  or first_name = 'Vidya'
  or first_name = 'Maya'
  and gender = 'male';

select last_name from employees where last_name like "e%" or last_name like "%e";

select last_name from employees where last_name like "e%" and last_name like "%e";

select hire_date from employees where hire_date like "199%" and birth_date like "%12-25";

select last_name from employees where last_name like "%q%" and not last_name like "%qu%";

