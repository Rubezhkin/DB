select now();

select employee_id, last_name, salary, div(salary*1.155,1) as "New salary" from employees;

select last_name from employees
where substring(last_name from 2 for 1) = 'a';

select employee_id, last_name, salary, div(salary*1.155,1) as "New salary", div(salary*0.155,1) as "Increase" from employees;

select  last_name, initcap(last_name), length(last_name) from employees
where substring(last_name from 1 for 1) in ('J', 'M', 'A')
Order by last_name;

select last_name, first_name,extract(year from age(now()::date, hire_date))* 12 + extract(month from age(now()::date, hire_date)) from employees;

select format('%s, earns, %s, monthly, but wants %s', last_name, salary, 3*salary) as "Dream Salary" from employees;

select last_name, first_name, lpad(salary::text, 15, '$') as "salary" from employees;

select format('%s, earns, %s, monthly, but wants %s', upper(last_name), salary, 3*salary) as "Dream Salary" from employees;

select upper(last_name), lower(first_name), extract(year from age(now()::date, hire_date))* 12 + extract(month from age(now()::date, hire_date)) from employees;

select last_name, first_name, rpad(salary::text, 10, '0') from employees;

select * from employees
where substr(last_name, 3) != '';

select * from employees
where length(last_name) = 3;

select employee_id, first_name, trim(last_name, 'Kk') from employees;

select * from employees
where position('in' in last_name) !=0;

select last_name, replace(last_name, 'in' , 'pm') from employees;

select * from employees
where position('i' in last_name) =2;

select concat_ws(' ', employee_id, last_name,first_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) "THE OUTPUT"FROM employees;


