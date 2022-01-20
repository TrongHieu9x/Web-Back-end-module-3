-- để tìm thông tin của khách hàng có tên là Land Of Toys Inc.
SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 

-- 
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

-- khi muốn tìm kiếm thông tin trong bộ lưu trữ có nhiều bản ghi thêm chỉ mục cho bảng customers như sau: 
ALTER TABLE customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 

-- thêm Index cho những cột mà có thể có nhiều hơn 1 kết quả khi query
  -- có thể Add index theo cặp như bạn add index cho cặp contactFirstName và contactLastName.
ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';

-- Để xoá chỉ mục trong bảng,
ALTER TABLE customers DROP INDEX idx_full_name;