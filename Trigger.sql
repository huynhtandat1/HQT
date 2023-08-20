CREATE OR REPLACE FUNCTION AddNewBook()
RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO Sach (MaSach, Tensach, GiaMua, TenLoaiSach, TenTacGia, TenLinhVuc)
    VALUES (NEW.MaSach, NEW.Tensach, NEW.GiaMua, NEW.TenLoaiSach, NEW.TenTacGia, NEW.TenLinhVuc);
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER InsertNewBookTrigger
AFTER INSERT ON Sach_Temp
FOR EACH ROW
EXECUTE FUNCTION AddNewBook();