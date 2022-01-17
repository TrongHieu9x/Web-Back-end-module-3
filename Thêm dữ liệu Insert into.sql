-- chọn database QuanLySinhVien để thao tác
use quanlysinhvien;

-- thêm lần lượt các bản ghi vào trong bảng class
insert into class
value (1, 'A1', '2008-12-20', 1);
insert into class
value (2, 'A2', '2008-12-22', 1);
insert into class
value (3, 'B3', current_date, 0);

-- Thêm dữ liệu vài trong bảng student
insert into student (studentName, address, phone, status, classId)
values ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

-- Thêm dữ liệu vào trong bảng subject
insert into subject
values (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
-- Thêm dữ liệu vào trong bảng Mark
insert into mark (subId, studentId, mark, examTimes)
values (1, 1, 8, 1),
	   (1, 2, 10, 2),
       (2, 1, 12, 1);