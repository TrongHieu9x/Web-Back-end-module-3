create database score_manager;

use score_manager;

-- tạo bảng student
create table student (
idHs varchar(20) primary key,
name varchar(50) ,
age datetime,
class varchar(20),
sex varchar(20));

-- Tạo bảng môn học(subject)
create table subject (
idMh varchar(20) primary key,
nameMh varchar(20) );

-- Tạo bảng điểm
create table transcript(
idHs varchar(20),
idMh varchar(20),
score int,
dayKt datetime,
primary key(idHs, idMh),
foreign key (idHs) references student(idHs),
foreign key (idMh) references subject(idMh));

-- Tạo bảng giáo viên
create table teacher(
idGv varchar(20) primary key,
nameGv varchar(20),
phone varchar(10));

-- thêm cột school idGv là khóa ngoại của bảng Subject
alter table subject add idGv varchar(20);
alter table subject add constraint fk_idGv foreign key(idGv) references teacher(idGv);