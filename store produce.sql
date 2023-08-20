create proc sp_themkho
	@MaSach int,
	@TongSoLuong int,
	@SoLuongCon int
as
begin
	insert into Kho(MaSach,TongSoLuong,SoLuongCon)
	values(
	@MaSach ,
	@TongSoLuong ,
	@SoLuongCon 
	);
	if @@ROWCOUNT > 0 begin return 1 end
	else begin return 0 end;
end
go
exec sp_themkho 4,3,2
select * from Kho;
go
---cap nhat---
CREATE PROCEDURE sp_capnhat_sach
    @MaSach int,
    @TongSoLuong int,
    @SoLuongCon int
AS
BEGIN
    UPDATE Kho
    SET
        TongSoLuong = @TongSoLuong,
        SoLuongCon = @SoLuongCon
    WHERE
        MaSach = @MaSach;

    IF @@ROWCOUNT > 0
        RETURN 1;
    ELSE
        RETURN 0;
END;
GO

EXEC sp_capnhat_sach 4, 311, 2;
SELECT * FROM Kho;
GO
---xoa
CREATE PROCEDURE sp_xoa_sach
    @MaSach int
AS
BEGIN
    IF EXISTS (SELECT * FROM Kho WHERE MaSach = @MaSach)
    BEGIN
        BEGIN TRANSACTION;
        
        DELETE FROM Kho WHERE MaSach = @MaSach;
        
        COMMIT TRANSACTION;
        
        RETURN 0;
    END
    ELSE
    BEGIN
        RETURN 1;
    END;
END;
GO

EXEC sp_xoa_sach 4;
SELECT * FROM Kho;
GO