use master
go 
drop database QLGen
go
create database QLGen
go
use  QLGen
go
create table ToChucGen
(Ten nvarchar(50) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(10)
, TrangThai nvarchar(20)
)
create table CaNhanGen
(ID nvarchar(12) primary key
, HoTen nvarchar(30)
, TenToChuc nvarchar(50) foreign key references ToChucGen(Ten)
, ChucVu nvarchar(30)
, TrangThai nvarchar(30)
)
create table GenVatNuoi
(Ma nvarchar(10) primary key
, Ten nvarchar(30)
, Loai nvarchar(30)
, MucDich nvarchar(30)
, TrangThai nvarchar(30)
)
create table QLGenVatNuoi
(TenToChuc nvarchar(50) foreign key references ToChucGen(Ten)
, MaGen nvarchar(10) foreign key references GenVatNuoi(Ma)
)