use quanlysinhvien;

-- Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
select address, count(studentId) as 'Số lượng học viên'
from student
group by address;

-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
select s.studentId,s.studentName, avg(mark)
from student s join mark m on s.studentId = m.studentId
group by s.studentId, s.studentName;

--  Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
	-- Đầu tiên hiển thị điểm trung bình các môn học của mỗi học viên
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.studentId = m.studentId
group by s.studentId, s.studentName;
	-- Sử dụng having để xét điều kiện điểm trung bình các môn học phải lớn hơn 15
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.studentId = m.studentId
group by s.studentId, s.studentName
having avg(mark) > 15;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
	-- Hiển thị danh sách điểm trung bình của các học viên
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.studentId = m.studentId
group by s.studentId, s.studentName;
	-- Sử dụng Having và All để tìm học viên có điểm trung bình lớn nhất
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.studentId = m.studentId
group by s.studentId, s.studentName
having avg (mark) >= all (select avg(mark) from mark group by mark.studentId);