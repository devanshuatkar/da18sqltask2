create table student(
id int primary key,
name varchar not null,
age int,
gender varchar,
exam_score int
)

insert into student (id, name, age, gender, exam_score)
values (101,'raj',20, 'male',85)

insert into student (id, name, age, gender, exam_score)
values (102,'sumit',18, 'male',75)

insert into student (id, name, age, gender, exam_score)
values (103,'sandeep',22, 'male',50)

insert into student (id, name, age, gender, exam_score)
values (104,'pooja',19, 'female',70)

insert into student (id, name, age, gender, exam_score)
values (105,'shreya',21, 'female',65)

insert into student (id, name, age, gender, exam_score)
values (106,'neha',25, 'female',55)

insert into student (id, name, age, gender, exam_score)
values (107,'ayush',26, 'male',65)

insert into student (id, name, age, gender, exam_score)
values (108,'ayushi',30, 'female',95)

select * from student

create table data(
id int primary key,
Education varchar,
city varchar,
passing_year int not null,
holidays_taken int default 0,
student_id int,
FOREIGN key (student_id) REFERENCES student(id)
)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(1,'Bachelors', 'nagpur',2015,25,101)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(2,'Masters', 'pune',2014,20,102)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(3,'Bachelors', 'mumbai',2016,10,103)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(4,'Masters', 'hariyana',2017,30,104)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(5,'Bachelors', 'nashik',2020,45,105)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(6,'Masters', 'nagpur',2018,45,106)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(7,'Bachelors', 'pune',2019,40,107)

insert into data(id, Education, city, passing_year, holidays_taken, student_id)
values(8,'Bachelors', 'pune',2021,50,108)

select * from data

create table attendance (
id int primary key,
date date,
status varchar,
student_id int,
FOREIGN key (student_id) REFERENCES student(id)
)

insert into attendance(id, date, status,student_id) 
values (100,'04-21-2025','Present',101)

insert into attendance(id, date, status, student_id) 
values (101,'04-18-2025','Absent',102)

insert into attendance(id, date, status, student_id) 
values (102,'04-12-2025','Present',103)

insert into attendance(id, date, status, student_id) 
values (103,'04-10-2025','Absent',104)

insert into attendance(id, date, status, student_id) 
values (104,'04-11-2025','Present',105)

insert into attendance(id, date, status, student_id) 
values (105,'04-26-2025','Absent',106)

insert into attendance(id, date, status, student_id) 
values (106,'04-28-2025','Present',107)

insert into attendance(id, date, status, student_id) 
values (107,'04-28-2025','Absent',108)

select * from attendance

create table projects(
id int primary key,
project_name varchar,
data_id int,
FOREIGN key (data_id) REFERENCES data(id)
)

insert into projects (id, project_name, data_id)
values (200, 'Website Redesign' ,1)

insert into projects (id, project_name, data_id)
values (201, 'Network Update' ,2)

insert into projects (id, project_name, data_id)
values (203, 'Annual Audit' ,3)

insert into projects (id, project_name, data_id)
values (204, 'Network Marketing' ,4)

insert into projects (id, project_name, data_id)
values (205, 'Marketing' ,5)

insert into projects (id, project_name, data_id)
values (206, 'Website Redesign' ,6)

select * from projects 

create table training_sessions(
id int primary key,
session_title varchar,
session_date date,
trainer_name varchar,
status varchar,
attendance_id int,
FOREIGN key (attendance_id) REFERENCES attendance(id)
)

insert into training_sessions (id, session_title, session_date, trainer_name, status, attendance_id)
values (401,'Advanced networking','04-12-2025','rocky','comleted',100)

insert into training_sessions (id, session_title, session_date, trainer_name, status, attendance_id)
values (402,'Financial forecasting','04-18-2025','khaali','comleted',101)

insert into training_sessions (id, session_title, session_date, trainer_name, status, attendance_id)
values (403,'Time management','04-20-2025','rocky','comleted',102)

insert into training_sessions (id, session_title, session_date, trainer_name, status, attendance_id)
values (404,'Advanced networking','04-21-2025','rocky','comleted',103)

insert into training_sessions (id, session_title, session_date, trainer_name, status, attendance_id)
values (405,'Financial forecasting','04-15-2025','rocky','comleted',104)

select * from training_sessions
