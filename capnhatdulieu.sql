--Cập nhật dữ liệu trong bảng Sach
INSERT INTO Sach(MaSach,Tensach,GiaMua,TenLoaiSach,TenTacGia,TenLinhVuc)
VALUES 
(5, 'Sách Chuyển sinh thành liễu', 100000, 'Truyện tranh', 'Tác Giả A', 'Lĩnh Vực huyền huyễn');

--Cập nhật dữ liệu bảng HoaDon
INSERT INTO HoaDon(MaHoaDon,TenKhachHang,NgayLap)
VALUES 
    (50, 'g', 4/1/2023);

--Cập nhật dữ liệu bảng Kho
INSERT INTO Kho(MaSach, TongSoLuong, SoLuongCon)
VALUES 
    (5, 5, 5);

--Cập nhật dữ liệu bảng thôngtinnhanvien
INSERT INTO thongtinnhanvien(ID_Staff, Tennhanvien, Gioitinh, ngaysinh, diachi, Email, SDT, ID_Use)
VALUES
    (11, 'Nguyen Van P', 0, '2000-01-01', '123 ABE Street', 'nguyenvanp@email.com', '123456789', 1);

--Cập nhật dữ liệu bảng NhatKynhapsach
INSERT INTO NhatKynhapsach(STT, MaSach, SoLuong, NgayNhap, ID_Staff)
VALUES 
    (05, 1, 4, 1/1/2021, 005);
--Cập nhật dữ liệu bảng SachKhuyenMai
INSERT INTO SachKhuyenMai(MaSach, MucGiamGia)
VALUES 
    (5, 10);
--Cập nhật dữ liệu bảng Thongtienxuatban 
INSERT INTO Thongtinxuatban (MaSach, LanTaiBan, NamXuatBan,NhaXuatBan, GiaBan)
VALUES 
    (5, 5, 4000, 03, 50000);
--Cập nhật dữ liệu bảng ChiTietHoaDon
INSERT INTO ChiTietHoaDon(MaHoaDon, MaSach, SoLuong, MucGiamGia)
VALUES 
    (050, 3, 3, 40);