--use hr_db
-- Display first name and last name after converting the first letter of each name to upper case and
-- the rest to lower case.
    Select UPPER(substring(First_name, 1,1))+ LOWER(substring(first_name, 2, Len(First_Name)-1))As First_name 
    , UPPER(substring(last_name, 1,1))+ LOWER(substring(last_name, 2, Len(last_Name)-1))As last_name from employees
-- Display the first word in job title.
    select job_title, substring(job_title,1, charindex(' ',job_title)-1) from jobs
-- Display the length of first name for employees where last name contain character ‘b’ after 3rd
-- position.
    
    Select last_name ,len(first_name) as 'length' from employees where last_name like '___%b%'
-- Display first name in upper case and email address in lower case for employees where the first
-- name and email address are same irrespective of the case.
    select upper(first_name),lower(email) from employees where upper(first_name)= upper(email)
-- Display first name, salary, and round the salary to thousands.
    select first_name , last_name ,salary,round(salary,1000) as round_salary from employees  
-- Display employee ID and the date on which he ended his previous job.
    select  employee_id ,end_date from job_history 
-- Display first name and date of first salary of the employees.
    select first_name ,eomonth(hire_date) as date_of_first_salary from employees
-- Display first name and experience of the employees.
    select first_name,  datediff( year, hire_date,getdate()) as experience from employees
-- Display first name of employees who joined in 2001.
    select first_name from employees where year(hire_date)=2001
-- Display employees who joined in the current year.
    select * from employees where year(hire_date)=year(getdate())
-- Display the number of days between system date and 1st January 2011.
    select datediff(day,'01-01-2011',getdate()) 
-- Display number of employees joined after 15th of the month.
    select count(employee_id) as Number_of_Employees from employees where day(hire_date)='15'
-- Display third highest salary of employees
    select top 1 salary from (select distinct top 3 salary from employees order by salary desc) third_highest_sal order by salary 