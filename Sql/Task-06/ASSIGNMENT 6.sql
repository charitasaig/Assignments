use classicmodels;
show tables;
select customername,creditlimit from customers where creditlimit=(select max(creditlimit) from customers);
select productname,buyprice from products where buyprice>(select avg(buyprice) from products);
select employeeNumber,lastname,firstname from employees where employeenumber in (select salesrepemployeenumber from customers where salesrepemployeenumber is not null);
select * from customers;
select * from payments;
select customernumber,contactlastname,contactfirstname,country from customers 
where country in(select country from customers group by country having count(*)>=1);
select a.customernumber,a.country from customers as a where creditlimit>
(select avg(creditlimit) from customers as b where a.country=b.country);
select customername,amount from customers join payments on 
customers.customernumber=payments.customernumber where amount=(select max(amount) from payments);
create table students_1(id int primary key,name varchar(100) not null,email varchar(100) unique,  age int check(age>=18));
desc students_1;
alter table students_1 add phnno int;
alter table students_1 modify phnno bigint;
create table departments(id int,dept_name varchar(50),location varchar(50));
desc departments;
alter table departments rename column location to dept_location;
insert into students_1(id,name,email,age,phnno) values(101,'charita','charitasai.g@gmail.com',20,9032278896);
insert into students_1(id,name,email,age,phnno) values(102,'avinsh','avi140320@gmail.com',19,9032278493);
insert into students_1(id,name,email,age,phnno) values(103,'geethika','geethu.1111.g@gmail.com',18,9128884323);
insert into students_1(id,name,email,age,phnno) values(104,'nandini','nandu13.g@gmail.com',21,9100373145);
insert into students_1(id,name,email,age,phnno) values(105,'gayathri','gayathri33.g@gmail.com',20,9198723219);
select * from students_1;
update students_1 set email='avinash1403@gmail.com' where id=102;
select * from students_1;
delete from students_1 where id=103;
select * from students_1;