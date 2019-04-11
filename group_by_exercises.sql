use titles;

describe titles;

select distinct title from titles;

select last_name
from employees
where
      last_name like "e%" and
      last_name like "%e"
group by last_name;

select first_name, last_name
from employees
where
    last_name like "e%" and
    last_name like "%e"
group by last_name, first_name;

select last_name, count(last_name)
from employees
where
      last_name like "%q%" and
      not last_name like "%qu%"
group by last_name;

select last_name, first_name
from employees
where
    last_name like "%q%" and
  not last_name like "%qu%"
order by last_name;

select count(*), gender
from employees
where first_name in ('Irena','Vidya','Maya')
group by gender;

describe employees;