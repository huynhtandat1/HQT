CREATE LOGIN [Admin] WITH PASSWORD = '123';

USE nha_sach_phuong_nam2;
CREATE USER [Admin] FOR LOGIN [Admin];

USE nha_sach_phuong_nam2;
DROP USER [Admin];
DROP LOGIN [Admin];

