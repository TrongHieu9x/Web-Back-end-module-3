-- tạo CSDL database Quản lý sinh viên
create database QuanLySinhVien;

-- chọn database Quản lý sinh viên để thao tác 
use QuanLySinhVien;

-- tạo bảng class
create table class(
classId int not null auto_increment primary key,
className varchar(60) not null,
startDate datetime not null,
status bit );

-- Tạo bảng student
create table student(
studentId int not null auto_increment primary key ,
studentName varchar(30) not null,
address varchar(50),
phone varchar(10),
status bit,
ClassId int not null,
foreign key(classId) references class(classId));

-- tạo bảng subject
create table subject(
subId int not null auto_increment primary key,
subName varchar(30) not null,
credit tinyint not null default 1 check (credit >= 1),
status bit default 1);

-- tạo bảng mark
create table mark(
markId int not null auto_increment primary key,
subId int not null unique key,
studentId int not null unique key,
mark float default 0 check (mark between 0 and 100),
examTimes tinyint default 1,
unique (subId, studentId),
foreign key(subId) references subject (subId),
foreign key(studentId) references student (studentId));