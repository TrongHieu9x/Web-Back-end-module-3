-- chọn database quanlysinhvien để thao tác
use quanlysinhvien;

-- Hiển thị danh sach tất cả học viên
SELECT * FROM student;

-- Hiển thị danh sách học viên đang theo học
SELECT * FROM student WHERE status = true;

-- Hiển thị danh sách các môn học có thời gian học hơn 10h
SELECT * FROM subject WHERE credit < 10;

-- Hiển thị danh sách học viên lớp A1
SELECT s.studentId, s.studentName, c.classId
WHERE c.className = 'A1';

-- Hiển thị điểm môn CF của các học viên
SELECT s.studentId, s.studentName, sub.subName, m.mark
FROM student s JOIN mark m ON s.studentId = m.studentId JOIN subject sub ON m.subId = sub.subId
WHERE sub.subName = 'CF';