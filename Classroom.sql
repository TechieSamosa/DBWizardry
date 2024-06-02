CREATE DATABASE college;
USE college;
CREATE TABLE student(
	ID varchar (10) primary key,
    Name varchar (50),
    Age int not null
);
insert into student values("22MIP10006", "Aditya Khamitkar", 20);
insert into student values("22MIP10063", "Patil Devendra Prashant", 20);
insert into student values("22MIP10053", "Aadish Pankaj Dabhade", 20);
select * from student 