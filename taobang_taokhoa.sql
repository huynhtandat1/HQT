CREATE TABLE  Sach(
    MaSach INT PRIMARY KEY,
    Tensach VARCHAR(255),
    GiaMua INT,
    TenLoaiSach VARCHAR(255),
    TenTacGia VARCHAR(255),
    TenLinhVuc VARCHAR(255)
)
CREATE TABLE Kho(
    MaSach INT PRIMARY KEY,
	TongSoLuong INT,
	SoLuongCon INT,
)
CREATE TABLE NhatKynhapsach(
     STT INT ,
	MaSach INT,
	SoLuong INT, 
	NgayNhap DaTeTime,
	ID_Staff INT,
)
CREATE TABLE SachKhuyenMai(
	MaSach INT ,
	MucGiamGia INT,
)
CREATE TABLE Thongtinxuatban(
	MaSach INT ,
	LanTaiBan INT,
	NamXuatBan INT,
	NhaXuatBan VarCHAR(255),
	GiaBan int,
)
CREATE TABLE ChiTietHoaDon(
	MaHoaDon INT ,
	MaSach int, 
	SoLuong int,
	MucGiamGia float,
)
CREATE TABLE HoaDon(
	MaHoaDon int PRIMARY KEY,
	TenKhachHang varchar(255),
	NgayLap datetime,
)
CREATE TABLE thongtinnhanvien(
	ID_Staff Int PRIMARY KEY,
	Tennhanvien Varchar(255),
	Gioitinh int,
	ngaysinh datetime,
	diachi nvarchar(255),
	Email nvarchar(255),
	SDT nvarchar(255),
	ID_Use int,
)
CREATE TABLE taikhoan(
	ID_Position int PRIMARY KEY,
	NamePoisition varchar(255),
)
CREATE TABLE thongtintaikhoan(
	ID_use int PRIMARY KEY,
	username varchar(255),
     matkhau int,
	ID_Position int,
	);
ALTER TABLE kho
ADD CONSTRAINT FK_kho_sach
FOREIGN KEY (Masach) REFERENCES sach(Masach);
ALTER TABLE ChiTietHoaDon
ADD CONSTRAINT FK_chitiethoadon_sach
FOREIGN KEY (Masach) REFERENCES sach(Masach);
ALTER TABLE Thongtinxuatban
ADD CONSTRAINT FK_Thongtinxuatban_sach
FOREIGN KEY (Masach) REFERENCES sach(Masach);
ALTER TABLE  SachKhuyenMai
ADD CONSTRAINT FK_SachKhuyenMai_sach
FOREIGN KEY (Masach) REFERENCES sach(Masach);
ALTER TABLE  nhatkynhapsach
ADD CONSTRAINT FK_nhatkynhapsach_kho
FOREIGN KEY (Masach) REFERENCES kho(Masach);
ALTER TABLE  thongtintaikhoan
ADD CONSTRAINT FK_thongtintaikhoan_taikhoan
FOREIGN KEY (id_position) REFERENCES taikhoan(id_position);
ALTER TABLE  thongtinnhanvien
ADD CONSTRAINT FK_thongtinnhanvien_thongtintaikhoan
FOREIGN KEY (id_use) REFERENCES thongtintaikhoan(id_use);
ALTER TABLE  NhatKynhapsach
ADD CONSTRAINT FK_NhatKynhapsach_thongtinnhanvien
FOREIGN KEY (id_staff) REFERENCES thongtinnhanvien(id_staff);
ALTER TABLE  ChiTietHoaDon
ADD CONSTRAINT FK_ChiTietHoaDon_hoadon
FOREIGN KEY (mahoadon) REFERENCES hoadon(mahoadon);

