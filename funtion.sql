CREATE FUNCTION InsertNewSach(
    p_MaSach INT,
    p_Tensach VARCHAR(255),
    p_GiaMua DECIMAL(10,2),
    p_TenLoaiSach VARCHAR(255),
    p_TenTacGia VARCHAR(255),
    p_TenLinhVuc VARCHAR(255)
)
RETURNS VOID
AS $$
BEGIN
    INSERT INTO Sach (MaSach, Tensach, GiaMua, TenLoaiSach, TenTacGia, TenLinhVuc)
    VALUES (p_MaSach, p_Tensach, p_GiaMua, p_TenLoaiSach, p_TenTacGia, p_TenLinhVuc);
END;
$$ LANGUAGE plpgsql;


--Sau khi tạo function trên, bạn có thể sử dụng nó để thêm một cuốn sách mới vào bảng "Sach" như sau:
SELECT InsertNewSach(1, 'Cuốn sách mới', 10.99, 'Loại sách', 'Tác giả', 'Lĩnh vực');