create database college;
use college;

create table Employee(
	e_name varchar(50),
    e_age int,
    e_gender varchar(50),
    e_salary int,
    e_dept varchar(50)
);

select * from Employee;

insert into Employee
(e_name, e_age, e_gender, e_salary, e_dept)
values
("Aditya", 20, "m", 55000, "CSE"),
("Arpit", 20, "m", 60000, "CSE"),
("Ashu", 19, "f", 50000, "IT"),
("Shweta", 35, "f",  100000, "EC"),
("Garvit", 21, "m", 50000, "CSE(DS)"),
("Rivanah", 25, "f", 75000, "CS"),
("Ansh", 34, "m", 90000, "EN"),
("Ayush", 29, "m", "60000", "IT");

select * from Employee;
select e_name from Employee;
select e_name, e_gender, e_salary from Employee;

select DISTINCT e_gender from Employee;
select DISTINCT e_dept from Employee;

select distinct * from Employee where e_gender='f';
select distinct * from Employee where e_age>30;
select distinct * from Employee where e_dept="CSE";
select distinct * from Employee where e_salary>50000;

select distinct * from Employee where e_gender='f' AND e_age<30;
select distinct * from Employee where e_dept='EC' AND e_salary>55000;
select distinct * from Employee where e_dept='CSE' OR e_salary>70000;
select distinct * from Employee where not e_gender= 'f';

select distinct * from Employee where e_name like 'A%';
select distinct * from Employee where e_name like '____ya%';
select distinct * from Employee where e_salary between 75000 and 90000;

select min(e_age) from employee;
select max(e_age) from employee;
select sum(e_salary) from employee;
select avg(e_age) from employee;

select * from Employee limit 3;
select * from Employee where e_salary > 50000 limit 2;

select distinct * from Employee where e_name in ('Aditya', 'Arpit', 'Shweta');
select distinct * from Employee where e_name not in ('Aditya', 'Arpit', 'Shweta');