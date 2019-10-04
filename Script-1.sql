create database geekbrains;
use geekbrains;
-- DDL - Data Definaiton language
-- ??????? ??????
create table courses (
	id INT auto_increment not null primary key,
	name VARCHAR(150) unique
);
/*
char(10)
DB*******
varchar(10)
DB
*/

create table students (
	id INT auto_increment not null primary key,
	firstname VARCHAR(150) not null,
	lastname VARCHAR(150) not null,
	email VARCHAR(150) unique,
	course_id INT
)

alter table students
add column birthday date;

alter table students
drop column date_of_birth

drop table students;

drop database geekbrains;


-- DML - Data Manupulation language
-- CRUD
insert into courses (name) values
("Databases"),
("Linux"),
("BigDATA");

insert into students (firstname, lastname, email, course_id) values
("Pavel", "Durov", "ivanov@yandex.ru", "1"),
("Bill", "Gates", "petrov@yandex.ru", "2"),
("Ivan", "Grozny", "i.pushkina@yandex.ru", "3"),
("Olga", "Buzova", "megastar@yandex.ru", "1");

select * from courses;
select * from students
where lastname = 'Gates';

update students
set email = 'o.b@gmail.com'
where lastname = 'Buzova'

delete from students
where course_id = 1;

delete from students

