use QLGiongVatNuoi
go
create procedure UpdateToChucGiong(
@Ten nvarchar(30)
, @DiaChi nvarchar(30)
, @SDT nvarchar(10)
, @TrangThai nvarchar(20)
, @Action int
)As Begin
	If @Action = -1 Begin
		Delete from ToChucGiong where Ten = @Ten
	End
	If @Action = 0 Begin 
		Update ToChucGiong SET
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into ToChucGiong (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end 
go
create procedure UpdateCaNhanGiong(
@ID nvarchar(12)
, @HoTen nvarchar(30)
, @ToChuc nvarchar(30)
, @ChucVu nvarchar(20)
, @Action int
)As Begin
	If @Action = -1 Begin
		Delete from CaNhanGiong where ID = @ID
	End
	If @Action = 0 Begin 
		Update CaNhanGiong SET
		ID = @ID,
		HoTen = @HoTen,
		ToChuc = @ToChuc,
		ChucVu = @ChucVu
		where ID = @ID
	End
	If @Action = 1 Begin 
		Insert into CaNhanGiong (ID,HoTen,ToChuc,ChucVu) values (@ID,@HoTen,@ToChuc,@ChucVu)
	End
end 
go
create procedure UpdateCoSoKhaoNghiemGiong(
@Ten nvarchar(30)
, @DiaChi nvarchar(30)
, @SDT nvarchar(10)
, @TrangThai nvarchar(20)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from CoSoKhaoNghiemGiong where Ten = @Ten
	End
	If @Action = 0 Begin
		Update CoSoKhaoNghiemGiong SET
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into CoSoKhaoNghiemGiong (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end 
go
create procedure UpdateGiongVatNuoi(
@Ma nvarchar(10)
, @Loai nvarchar(20)
, @MucDich nvarchar(30)
, @TrangTHai nvarchar(30)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from GiongVatNuoi where Ma = @Ma
	End
	If @Action = 0 Begin 
		Update GiongVatNuoi SET 
		Ma = @Ma,
		Loai = @Loai,
		MucDich = @MucDich,
		TrangTHai = @TrangTHai
		where Ma = @Ma
	End
	If @Action = 1 Begin 
		Insert into GiongVatNuoi (Ma,Loai,MucDich,TrangTHai) values (@Ma,@Loai,@MucDich,@TrangTHai)
	End
end 
go
create procedure UpdateQLGiongVatNuoi(
@ToChuc nvarchar(30)
, @MaGiong nvarchar(10)
, @CoSoKhaoNghiem nvarchar(30)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from QLGiongVatNuoi where ToChuc = @ToChuc 
	End
	If @Action = 0 Begin
		Update QLGiongVatNuoi SET
		ToChuc = @ToChuc,
		MaGiong = @MaGiong,
		CoSoKhaoNghiem = @CoSoKhaoNghiem
		where ToChuc = @ToChuc
	End
	If @Action = 1 Begin 
		Insert into QLGiongVatNuoi (ToChuc,MaGiong,CoSoKhaoNghiem) values (@ToChuc,@MaGiong,@CoSoKhaoNghiem)
	End
end 
go
create procedure UpdateQLMuaBan(
@ToChucBan nvarchar(30)
, @IDNguoiBan nvarchar(12)
, @ToChucMua nvarchar(30)
, @IDNguoiMua nvarchar(12)
, @MaGiong nvarchar(10)
, @SoLuong int
, @ThoiGian datetime
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from QLMuaBan where ToChucBan = @ToChucBan
	End
	If @Action = 0 Begin
		Update QLMuaBan SET 
		ToChucBan = @ToChucBan,
		IDNguoiBan = @IDNguoiBan,
		ToChucMua = @ToChucMua,
		IDNguoiMua = @IDNguoiMua,
		MaGiong = @MaGiong,
		SoLuong = @SoLuong,
		ThoiGian = @ThoiGian
		where ToChucBan = @ToChucBan
	End
	If @Action = 1 Begin 
		Insert into QLMuaBan (ToChucBan,IDNguoiBan,ToChucMua,IDNguoiMua,MaGiong,SoLuong,ThoiGian) 
			values (@ToChucBan,@IDNguoiBan,@ToChucMua,@IDNguoiMua,@MaGiong,@SoLuong,@ThoiGian)
		End
end 
go
 