use employees;

select concat(last_name, ', ', first_name), birth_date as 'full_name', 'DOB'
from employees
limit 10;

select concat(last_name, ', ', first_name) as full_name, birth_date as DOB
         from employees
         limit 10;

select concat(emp_no, ' - ', last_name, ', ', first_name) as full_name, birth_date as DOB
from employees
limit 10;


show tables;
describe departments;
describe dept_emp;
describe dept_manager;
describe employees;
describe salaries;
describe titles;

use codeup_test_db;

select * from albums;

select distinct artist, name
from albums;

show create table employees.emp_no;

# alter table albums
# add unique (artist, name);

# insert into albums(primary key (artist, name))

