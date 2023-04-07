select last_name, job_id, hire_date as "STARDATE", employee_id from employees;

select distinct job_id from employees;

select last_name as "Employee", employee_id as "Emp #",hire_date as "Hire Date", job_id as "Job" from employees;

select last_name || ', ' || job_id as "Employee and Title" from employees;

select last_name as "Employee", salary, salary*1.15 as "Next Year Salary" from employees;

select last_name, salary*12 from employees;
 
select last_name || ' for the year received ' || salary *12 as "Total salary", salary*(1+coalesce(commission_pct,0)) as "Premium Salary" from employees;

select last_name|| E'\'s salary is '|| salary from employees;

select first_name || last_name || 'has phone number ' || phone_number from employees;

select distinct job_id from employees;