use master
go
drop database QLThucAn
go
create database QLThucAn
go
use QLThucAn
go
create table CoSoSanXuat
(Ten nvarchar(50) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(10)
, CapGiayChungNhan bit
, TrangThai nvarchar(50)
)
create table ThucAnChanNuoi
(Ma nvarchar(10) primary key
, Ten nvarchar(30)
, NguyenLieu nvarchar(50)
, DoiTuongSuDung nvarchar (30)
)
create table CoSoKhaoNghiemThucAn
(Ten nvarchar(50) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(10)
, TrangThai nvarchar(20)
)
create table CoSoMuaBanThucAn
(Ten nvarchar(50) primary key
, DiaChi nvarchar(50)
, SDT nvarchar(10)
, TrangThai nvarchar(20)
)
create table QLSXThucAn
(TenToChuc nvarchar(50) foreign key references CoSoSanXuat(Ten)
, MaSanPham nvarchar(10) foreign key references ThucAnChanNuoi(Ma)
, CoSoKhaoNghiem nvarchar(50) foreign key references CoSoKhaoNghiemThucAn(Ten)
)
create table QLMuaBan
(ToChucBan nvarchar(50) foreign key references CoSoMuaBanThucAn
, NguoiMua nvarchar(30)
, MaSanPham nvarchar(10) foreign key references ThucAnChanNuoi(Ma)
, SoLuong int
, ThoiGian datetime
)
create table CamSuDung
(Ma nvarchar(10) primary key
, Ten nvarchar(30)
, MoTa nvarchar(100)
)
create table DuocPhepSuDung
(Ma nvarchar(10) primary key
, Ten nvarchar(30)
, MoTa nvarchar
)