use QLGen
go
create procedure UpdateToChucGen(
@Ten nvarchar(50)
, @DiaChi nvarchar(50)
, @SDT nvarchar(10)
, @TrangThai nvarchar(20)
, @Action int
)As Begin
	If @Action = -1 Begin
		Delete from ToChucGen where Ten = @Ten
	End
	If @Action = 0 Begin 
		Update ToChucGen SET 
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
		End
	If @Action = 1 Begin 
		Insert into ToChucGen (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end 
go
create procedure UpdateCaNhanGen(
@ID nvarchar(12)
, @HoTen nvarchar(30)
, @TenToChuc nvarchar(50)
, @ChucVu nvarchar(30)
, @TrangThai nvarchar(30)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from CaNhanGen where ID = @ID 
	End
	If @Action = 0 Begin 
		Update CaNhanGen SET
		ID = @ID,
		HoTen = @HoTen,
		TenToChuc = @TenToChuc,
		ChucVu = @ChucVu,
		TrangThai = @TrangThai
		where ID = @ID
	End
	If @Action = 1 Begin
		Insert into CaNhanGen (ID,HoTen,TenToChuc,ChucVu,TrangThai) values (@HoTen,@TenToChuc,@ChucVu,@TrangThai)
	End
end 
go
create procedure UpdateGenVatNuoi(
@Ma nvarchar(10)
, @Ten nvarchar(30)
, @Loai nvarchar(30)
, @MucDich nvarchar(30)
, @TrangThai nvarchar(30)
, @Action int
)As Begin
	If @Action = -1 Begin
		Delete from GenVatNuoi where Ma = @Ma
	End
	If @Action = 0 Begin 
		Update GenVatNuoi SET 
		Ma = @Ma,
		Ten = @Ten,
		Loai = @Loai,
		MucDich = @MucDich,
		TrangThai = @TrangThai
		where Ma = @Ma
	End
	If @Action = 1 Begin
		Insert into GenVatNuoi (Ma,Ten,Loai,MucDich,TrangThai) values (@Ma,@Ten,@Loai,@MucDich,@TrangThai)
	End
end 
go
create procedure UpdateQLGenVatNuoi(
@TenToChuc nvarchar(50)
, @MaGen nvarchar(10)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from QLGenVatNuoi where TenToChuc = @TenToChuc
	End
	If @Action = 0 Begin 
		Update QLGenVatNuoi SET
		TenToChuc = @TenToChuc,
		MaGen = @MaGen
		where TenToChuc = @TenToChuc
	End
	If @Action = 1 Begin 
		Insert into QLGenVatNuoi (TenToChuc,MaGen) values (@TenToChuc,@MaGen)
	End
end 
go
