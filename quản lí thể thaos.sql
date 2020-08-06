CREATE DATABASE QLTHETHAOs
Go
Use QLTHETHAOs
Go
create table TK
(
TenTK varchar(50),
MaTK varchar(20) primary key,
MK varchar(30),
SĐT int,
Email varchar(30),
DiaChi nvarchar(100),
)
go
create table KH
(
TenKH nvarchar(50),
MaKH varchar(20) primary key,
GioiTinh nvarchar(10),
SĐT int ,
Email varchar(30),
DiaChi nvarchar(100),
MaTK VARCHAR(20),
)
go
create table SPHAM
(
TenSP nvarchar(30),
MaSP varchar(20) primary key,
Gia float,
KhuyenMai varchar(50),
MaKM varchar(10),
MaKH varchar(20) ,
)
go
create table DTHU
(
TenSP nvarchar(50) ,
MaSP varchar(20) primary key,
SoLuong int,
MaKM varchar(10),
TongTien nvarchar(40),
Ngay datetime,
)
ALTER TABLE KH
ADD constraint FRK_KHACH_TK FOREIGN KEY (MaTK) REFERENCES TK(MATK);
go
ALTER TABLE SPHAM
ADD constraint FRK_SPHAM_KH FOREIGN KEY (MaKH) REFERENCES KH(MaKH);
go
ALTER TABLE DTHU
ADD constraint FRK_DTHU_SPHAM  FOREIGN KEY (MaSP) REFERENCES SPHAM(MaSP);
GO
insert into TK values('Chinumber1','C01','Chi5509','0385958097','chi12@gmail.com','Binh Dương')
insert into TK values('CuongDola','D01','Cuong090947','034758967','cuong50@gmail.com','TP Hồ Chí Minh')
insert into TK values('MinhKhoi25','M01','Minh9909','034678907','MinhKhoi50@gmail.com','Bình Phước')
insert into TK values('Tuannr01','T01','Tuan090922','089067854','Tuan09@gmail.com','Lâm Đồng')
insert into TK values('Nganvety','N01','Ngan4479','0345057877','Nganvety@gmail.com','TP Huế')
insert into TK values('HaoNguyen101','H01','Hao001','0389094397','Haonguyen@gmail.com','Nghệ An')
insert into TK values('Tuyen7709','T02','Tuyen59','034334454097','Tuyen77@gmail.com','Cà Mau')
go
insert into KH values('Nguyễn Minh Chí','001','Nam','0385958097','chi12@gmail.com','Bình Dương','C01')
insert into KH values('Nguyễn Tấn Cường','002','Nam','034758967','cuong50@gmail.com','TP Hồ Chí Minh','D01')
insert into KH values('Nguyễn Khôi Minh','003','Nam','034678907','MinhKhoi50@gmail.com','Bình Phước','M01')
insert into KH values('Phạm Minh Tuấn','004','Nam','089067854','Tuan09@gmail.com','Lâm Đồng','T01')
insert into KH values('Nguyễn Thị Thùy Ngân','005','Nữ','0345057877','Nganvety@gmail.com','TP Huế','N01')
insert into KH values('Nguyễn Thanh Hào','006','Nam','0389094397','Haonguyen@gmail.com','Nghệ An','H01')
insert into KH values('Nguyễn Minh Tuyền','007','nữ','034334454097','Tuyen77@gmail.com','Cà Mau','T02')
go
insert into SPHAM values('Giày Adidas','ADIDAS',2500000,'Khuyễn mãi 20%','KM20','001')
insert into SPHAM values('Giày Nike','NIKE',1500000,'Khuyễn mãi 50%','KM50','002')
insert into SPHAM values('Giày Supreme','SUPREME ',2000000,'Khuyễn mãi 23%','KM23','003')
insert into SPHAM values('Giày Jordan','JORDAN',700000,'Khuyễn mãi 30%','KM30','004')
insert into SPHAM values('Giày Puma','PUMA',500000,'Khuyễn mãi 10%','KM10','005')
insert into SPHAM values('Giày Palenciaga','PALENCIAGA',1500000,'Khuyễn mãi 5%','KM5','006')
insert into SPHAM values('Giày Vans','VANS',1200000,'Khuyễn mãi 10%','KM10','007')
go
insert into DTHU values('Giày Adidas','ADIDAS',4,'KM20',8000000,20/07/2017) 
insert into DTHU values('Giày Nike','NIKE',3,'KM50',2250000,22/11/2017) 
insert into DTHU values('Giày Supreme','SUPREME',3,'KM23',4620000,16/03/2017) 
insert into DTHU values('Giày Jordan','JORDAN',2,'KM30',980000,18/04/2017) 
insert into DTHU values('Giày Puma','PUMA',5,'KM10',2250000,20/10/2017) 
insert into DTHU values('Giày Palenciaga','PALENCIAGA',1,'KM5',1425000,22/09/2017) 
insert into DTHU values('Giày Van','VANS',4,'KM10',43200000,20/02/2017)