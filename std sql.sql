

use std;

create table student(id int,sname varchar(30),mark1 int,mark2 int,mark3 int ,total int);

select * from student;

insert student(id,sname,mark1,mark2,mark3,total)values(101,'akshu',70,80,65,215),(102,'Aishu',70,85,69,197),(103,'sankruth',70,88,98,256),(104,'Akshay',90,60,82,232),(105,'nithya',70,88,90,248);

select sum(total) from student;
