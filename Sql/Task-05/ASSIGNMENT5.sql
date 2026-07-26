use classicmodels;
select sum(amount) from payments;
select count(*) as total_customers,max(creditLimit) as highest_cl,min(creditLimit) as lowest_cl,avg(creditLimit) as average from customers;
select max(buyPrice) as high,min(buyPrice) as low , avg(buyPrice) as average from products;
select country,count(*) as Total_customers from customers group by country;
select officecode,count(*) as total_employees from employees group by officecode;
select productLine,count(*) as count from products group by productline;
select customername ,creditlimit from customers order by creditlimit desc;
select productname , buyprice from products order by buyprice;
select contactfirstname,contactlastname from customers order by contactfirstname,contactlastname;
select customername,creditlimit from customers order by creditlimit desc limit 5;
select productcode,msrp from products order by msrp limit 10;
select * from orders limit 7;
select country,count(*) as total_customers from customers group by country having count(*)>5;
select productline,count(*) as total_products from products group by productline having count(*)>10;
select officecode,count(*) as total_no_employees from employees group by officecode having count(*)>2;
select c.customername,o.ordernumber,o.orderdate from customers as c inner join orders as o where c.customernumber=o.customernumber;
select e.lastname,e.firstname,o.city,o.country from employees as e inner join offices as o where e.officecode=o.officecode;
select c.customername,o.ordernumber from customers as c left join orders as o on c.customernumber=o.customernumber;
select e.lastname,e.firstname,c.customername from employees as e left join customers as c on e.employeenumber=c.salesrepemployeenumber;
select o.city,e.lastname,e.firstname from employees as e right join offices as o on e.officecode=o.officecode;
select c.customerNumber,c.customerName,o.orderNumber,o.orderDate from customers as c left join orders as o 
on c.customerNumber = o.customerNumber UNION select c.customerNumber,c.customerName,o.orderNumber,o.orderDate from customers as c
right join orders as o on c.customerNumber = o.customerNumber;
create table students(id int primary key,name varchar(200) not null,email varchar(100) unique,age int check(age>=18));
desc students;
create table courses(id int primary key,courseName varchar(100) unique,duration int not null);
desc courses;
create table enrollments(studentID int,courseID int,enrollmentDate int,
primary key(studentID,courseID),foreign key(studentID) references students(id),foreign key(courseID) references courses(id));
desc enrollments;
#mini challenge
select customername,creditlimit from customers order by creditlimit desc limit 5;
select country,count(*) as total_customers from customers group by country ;
select productline,count(*) as total_products from products group by productline having count(*)>10;
select c.customername,o.ordernumber from customers as c inner join orders as o where c.customernumber=o.customernumber;
select e.employeenumber,o.city from employees as e inner join offices as o where e.officecode=o.officecode;
select avg(buyprice) as total_average_price from products;
select max(buyprice) as highest_payment from products;
select count(*) as total_no_products from productlines;