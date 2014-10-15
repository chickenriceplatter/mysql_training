# Code to create tables with data for sql-traning project

use mysql_training;

create table student(
  id int auto_increment,
  first_name varchar(20),
  last_name varchar(20),
  primary key(id)
);

create table class(
  id int auto_increment,
  class_name varchar(20),
  primary key(id)
);

create table registration(
  student_id int,
  class_id int,
  key idx1(class_id, student_id)
);

insert student(first_name, last_name) values
  ('Mary', 'Hopkin'),
  ('Karl', 'Marx'),
  ('Jim', 'Watson'),
  ('Bob', 'Johnson'),
  ('Mike', 'Jackson'),
  ('Stevie', 'Wonder'),
  ('Gwen', 'Stephanie'),
  ('Will', 'Pharel'),
  ('Blake', 'Shelton')
;

insert class(class_name) values ('Biology'), ('Math'), ('Physics');

insert registration(student_id, class_id) values
  (1,1), (1,2), (2,2), (2,3), (3,1), (4,1), (5,2), (6,2), (6,3), (1,3), (2,1),(7,2);

create table employee(
  id int auto_increment,
  first_name varchar(20),
  last_name varchar(20),
  birth_date date,
  primary key(id)
);

insert employee(first_name, last_name, birth_date) values
  ('Mary', 'Hopkin', '1965-01-01'),
  ('Karl', 'Marx', '1960-02-02'),
  ('Jim', 'Watson', '1970-03-03'),
  ('Bob', 'Johnson', '1975-04-04'),
  ('Mike', 'Jackson','1976-05-05'),
  ('Stevie', 'Wonder','1980-06-06'),
  ('Gwen', 'Stephanie','1977-07-07'),
  ('Will', 'Pharel','1981-08-08'),
  ('Blake', 'Shelton','1982-09-09')
;

create table award(
  employee_id int not null,
  name varchar(64),
  award_date date
);

insert award values
  (1,'Employee of the Month', '2010-03-22'),
  (2,'Employee of the Month', '2011-04-20'),
  (4,'Employee of the Month', '2013-03-22'),
  (1,'Employee of the Month', '2014-03-12'),
  (1,'Excellent Archievement', '2014-03-12'),
  (2,'Excellent Archievement', '2013-03-12'),
  (5,'Excellent Archievement', '2012-03-12')
;
