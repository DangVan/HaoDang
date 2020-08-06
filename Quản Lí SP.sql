CREATE DATABASE QLSP
go
use QLSP
go
create table CacLoai
(
TenSanPham nvarchar(60),
Gia nvarchar(30),
MaSanPham nvarchar(40),
SoLuong int,
Hinh image,
)
create table HinhBanh
(
TenSanPham nvarchar(60),
Gia nvarchar(30),
MaSanPham nvarchar(40),
SoLuong int,
Hinh image,
)
create table Socccer
(
TenSanPham nvarchar(60),
MaSanPham nvarchar(40),
Gia nvarchar(30),
SoLuong int,
Hinh image,
)
create table GoalKeeper
(
TenSanPham nvarchar(60),
MaSanPham nvarchar(40),
Gia nvarchar(30),
SoLuong int,
Hinh image,
)
