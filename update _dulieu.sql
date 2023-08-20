--Cập nhật dữ liệu trong bảng Sach
UPDATE Sach
SET GiaMua = 10000
WHERE MaSach = 2;

--Cập nhật dữ liệu bảng HoaDon
UPDATE HoaDon
SET TenKhachHang = ‘Bảo Bảo’
WHERE MaHoaDon = 1;

--Cập nhật dữ liệu bảng Kho
UPDATE Kho
SET SoLuongCon= 1
WHERE MaSach = 1;

--Cập nhật dữ liệu bảng thôngtinnhanvien
UPDATE thôngtinnhanvien
SET gioitinh = 1
WHERE ID_Staff = 1;

---Cập nhật dữ liệu bảng ChiTietHoaDon
UPDATE ChiTietHoaDon
SET SoLuong= 1
WHERE MaHoaDon= 2;

---Cập nhật dữ liệu bảng Thongtienxuatban 
UPDATE Thongtienxuatban 
SET GiaBan= 1
WHERE MaSach= 2;

--Cập nhật dữ liệu bảng SachKhuyenMai	
UPDATE SachKhuyenMai
SET MucGiamGia= 20
WHERE MaSach= 2;

---Cập nhật dữ liệu bảng NhatKynhapsach
UPDATE NhatKynhapsach
SET SoLuong= 1
WHERE MaHoaDon= 1;

--cập nhật dư liệu tài khoản
UPDATE taikhoan
SET nameposition= 'dat'
where id_position= 1 ;


--cập nhật thông tin tai khoản
UPDATE thongtintaikhoan
SET usename= 'dat'
WHERE  id_use= 1;
