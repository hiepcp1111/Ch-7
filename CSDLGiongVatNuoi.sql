use master
go
drop database QLGiongVatNuoi
go
create database QLGiongVatNuoi
go
use QLGiongVatNuoi
go
create table ToChucGiong
(Ten nvarchar(30) primary key
, DiaChi nvarchar(30)
, SDT nvarchar(10)
, TrangThai nvarchar(20)
)
create table CaNhanGiong
(ID nvarchar(12) primary key
, HoTen nvarchar(30)
, ToChuc nvarchar(30) foreign key references ToChucGiong(Ten)
, ChucVu nvarchar(20)
)
create table CoSoKhaoNghiemGiong
(Ten nvarchar(30) primary key
, DiaChi nvarchar(30)
, SDT nvarchar(10)
, TrangThai nvarchar(20)
)
create table GiongVatNuoi
(Ma nvarchar(10) primary key
, Loai nvarchar(20)
, MucDich nvarchar(30)
, TrangTHai nvarchar(30)
)
create table QLGiongVatNuoi
(ToChuc nvarchar(30) foreign key references ToChucGiong(Ten)
, MaGiong nvarchar(10) foreign key references GiongVatNuoi(Ma)
, CoSoKhaoNghiem nvarchar(30) foreign key references CoSoKhaoNghiemGiong(Ten)
)
create table QLMuaBan
(ToChucBan nvarchar(30) foreign key references ToChucGiong(Ten)
, IDNguoiBan nvarchar(12) foreign key references CaNhanGiong(ID)
, ToChucMua nvarchar(30) foreign key references ToChucGiong(Ten)
, IDNguoiMua nvarchar(12) foreign key references CaNhanGiong(ID)
, MaGiong nvarchar(10) foreign key references GiongVatNuoi(Ma)
, SoLuong int
, ThoiGian DateTime
)

