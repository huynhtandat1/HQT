INSERT INTO Sach(MaSach,Tensach,GiaMua,TenLoaiSach,TenTacGia,TenLinhVuc)
VALUES 
    (1, 'Sách Ta là tà đế', 100000, 'Truyện tranh', 'Tác Giả A', 'Lĩnh Vực huyền huyễn'),
    (2, 'Sách Song tu đạo lữ', 150000, 'Truyện tranh', 'Tác Giả B', 'Lĩnh Vực huyền huyễn'),
    (3, 'Sách Văn học', 200000, 'Học tập', 'Tác Giả C', 'Lĩnh Vực kiến thức');

	INSERT INTO Kho(MaSach, TongSoLuong, SoLuongCon)
VALUES 
    (1, 4, 3),
    (2, 5, 3),
    (3, 2, 1);

		INSERT INTO NhatKynhapsach(STT, SoLuong, NgayNhap)
VALUES 
    (01, 4, 1/1/2020),
    (02, 5, 1/1/2022),
    (03, 2, 1/1/2023);

			INSERT INTO SachKhuyenMai( MucGiamGia)
VALUES 
    ( 10),
    ( 20),
    ( 30);

			INSERT INTO Thongtinxuatban( LanTaiBan, NamXuatBan,NhaXuatBan, GiaBan)
VALUES 
    ( 1, 2000, 00, 10000),
    ( 1, 2001, 01, 10000),
    ( 1, 2002, 02, 20000);

			INSERT INTO ChiTietHoaDon( SoLuong, MucGiamGia)
VALUES 
    ( 1, 10),
    ( 2, 20),
    ( 1, 30);

			INSERT INTO HoaDon(mahoadon,TenKhachHang,NgayLap)
VALUES 
    (001 ,'d', 4/1/2023),
    (002, 'e', 4/2/2023),
    (003 , 'f', 4/3/2023);

INSERT INTO thongtinnhanvien(ID_Staff, Tennhanvien, Gioitinh, ngaysinh, diachi, Email, SDT)
VALUES
    (1, 'Nguyen Van A', 0, '2000-01-01', '123 ABC Street', 'nguyenvana@email.com', '123456789'),
    (2, 'Tran Thi B', 1, '1995-05-10', '456 XYZ Street', 'tranthib@email.com', '987654321'),
    (3, 'Pham Van C', 0, '1998-12-25', '789 DEF Street', 'phamvanc@email.com', '246813579'),
    (4, 'Hoang Thi D', 1, '1992-09-15', '321 GHI Street', 'hoangthid@email.com', '135792468'),
    (5, 'Le Van E', 0, '1997-07-07', '654 JKL Street', 'levane@email.com', '864209753'),
    (6, 'Vo Thi F', 1, '1994-03-20', '987 MNO Street', 'vothif@email.com', '370295864'),
    (7, 'Do Van G', 0, '1999-11-11', '258 PQR Street', 'dovang@email.com', '592683741'),
    (8, 'Ngo Thi H', 1, '1993-08-08', '753 STU Street', 'ngothih@email.com', '416927538'),
    (9, 'Ly Van I', 0, '1996-06-06', '159 VWX Street', 'lyvani@email.com', '927538416'),
    (10, 'Mai Thi J', 1, '2001-04-30', '852 YZ Street', 'maithij@email.com', '538416927');

		INSERT INTO taikhoan(ID_Position,NamePoisition)
VALUES 
    (01, 'tandat'),
    (02, 'baoha'),
    (03, 'ngoccuong');

 	INSERT INTO thongtintaikhoan(ID_use,username,matkhau)
VALUES 
    (010, 'tandat',66165),
    (011, 'baoha',651241),
    (012, 'ngoccuong',225625);