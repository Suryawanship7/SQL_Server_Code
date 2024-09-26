CREATE Database B24DB
use B24DB
/*create table students
(RollNo int,
Name varchar(50),
Email varchar(50)
)
insert into students values(1,'paka','paka@1gmail.com')
insert into students (RollNo,Email) values(2,'kala2@gmail.com')
select RollNo,Name,Email from students*/

drop table student

----not null constraints
/*create table student(RollNo int,
Name varchar(50) not null,
Email varchar(50)
)
insert into student values(1,'paka','paka@1gmail.com')
insert into student (RollNo,Email) values(2,'kala2@gmail.com')
select RollNo,Name,Email from student
drop table student
create table student(RollNo int,
Name varchar(50) not null,
Email varchar(50)
)
insert into student values(1,'paka','paka@1gmail.com')
insert into student (RollNo,Email) values(2,'kala2@gmail.com')
select RollNo,Name,Email from student*/
--primary key
--it is only one col in table
--it does not allow duplicate value
--eg. we can crate roll no as primary key beacuse in one class two student have does not same roll no.
 create table student(RollNo int primary key,
Name varchar(50) not null,
Email varchar(50) Unique ,
course varchar(70) default 'Dot_Net',
Gender varchar(20) check (Gender='Male' or Gender='Female')
)
go
insert into student values(1,'paka','paka@1gmail.com','java','Female')
insert into student (RollNo,Name,Email,course) values(2,'kala','kala2@gmail.com','react','Female')
--insert into student values(2,'gora','gora@2gmail.com')
--we use above line or queey it will give error you
/**Msg 2627, Level 14, State 1, Line 40
Violation of PRIMARY KEY constraint 'PK__student__7886D5A0692E4C51'. Cannot insert duplicate key in object 'dbo.student'. The duplicate key value is (2).
The statement has been terminated.**/
--we can write differnt roll no
insert into student values(3,'gora','gora@2gmail.com','sql','Male')
-- now we know that only one primary key is allowed in program,
-- fact is for mail we need uniqness two student does not have same mail address\
-- for this issue we use "unique key" it allows to write unique values in cols and not a duplicate
-- we use in table rather than primary key for does not want any duplicate values not for another col in table for mail we arite now check above code
-- just write "unique" word


select RollNo,Name,Email,course,Gender from student
drop table student


--Constraints for existing table:
create table student(
RollNo int,
course varchar(50),
Name varchar(50),
Email varchar(50))
alter table student
alter column Name varchar(50) not null
alter table student
add constraint For_course default 'Dot net' for course
 drop table student


 --- Composite key
 create table student(
RollNo int,
course varchar(50),
Name varchar(50),
Email varchar(50)
primary key(Name,Email))
insert into student values(1,'java','kala','kala@23gmail.com')
insert into student values(2,'react','kala','kala007@gmail.com')
select  RollNo,Name,Email,course from student


----Foregin Key
use B24DB
go
drop table student
go
create table Student
(



)