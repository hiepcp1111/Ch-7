use QLThucAn
go
create procedure UpdateCoSoSanXuat(
@Ten nvarchar(50)
, @DiaChi nvarchar(50)
, @SDT nvarchar(10)
, @CapGiayChungNhan bit
, @TrangThai nvarchar(50)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from CoSoSanXuat where Ten = @Ten 
	End
	If @Action = 0 Begin 
		Update CoSoSanXuat SET
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		CapGiayChungNhan = @CapGiayChungNhan,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into CoSoSanXuat (Ten,DiaChi,SDT,CapGiayChungNhan,TrangThai)
			values (@Ten,@DiaChi,@SDT,@CapGiayChungNhan,@TrangThai)
	End
end 
go
create procedure UpdateThucAnChanNuoi(
@Ma nvarchar(10)
, @Ten nvarchar(30)
, @NguyenLieu nvarchar(50)
, @DoiTuongSuDung nvarchar(30)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from ThucAnChanNuoi where Ma = @Ma
	End
	If @Action = 0 Begin 
		Update ThucAnChanNuoi SET
		Ma = @Ma,
		Ten = @Ten,
		NguyenLieu = @NguyenLieu,
		DoiTuongSuDung = @DoiTuongSuDung
		where Ma = @Ma
	End
	If @Action = 1 Begin
		Insert into ThucAnChanNuoi (Ma,Ten,NguyenLieu,DoiTuongSuDung) 
			values (@Ma,@Ten,@NguyenLieu,@DoiTuongSuDung)
	End
end 
go
create procedure UpdateCoSoKhaoNghiemThucAn(
@Ten nvarchar(50)
, @DiaChi nvarchar(50)
, @SDT nvarchar(10)
, @TrangThai nvarchar(20)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from CoSoKhaoNghiemThucAn where Ten = @Ten
	End
	If @Action = 0 Begin 
		Update CoSoKhaoNghiemThucAn SET 
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin
		Insert into CoSoKhaoNghiemThucAn (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end 
go
create procedure UpdateCoSoMuaBanThucAn(
@Ten nvarchar(50)
, @DiaChi nvarchar(50)
, @SDT nvarchar(10)
, @TrangThai nvarchar(20)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from CoSoMuaBanThucAn where Ten = @Ten 
	End
	If @Action = 0 Begin 
		Update CoSoMuaBanThucAn SET
		Ten = @Ten,
		DiaChi = @DiaChi,
		SDT = @SDT,
		TrangThai = @TrangThai
		where Ten = @Ten
	End
	If @Action = 1 Begin 
		Insert into CoSoMuaBanThucAn (Ten,DiaChi,SDT,TrangThai) values (@Ten,@DiaChi,@SDT,@TrangThai)
	End
end
go
create procedure UpdateQLSXThucAn(
@TenToChuc nvarchar(50)
, @MaSanPham nvarchar(10)
, @CoSoKhaoNghiem nvarchar(50)
, @Action int
)As Begin 
	If @Action = -1 Begin 
		Delete from QLSXThucAn where TenToChuc = @TenToChuc 
	End
	If @Action = 0 Begin 
		Update QLSXThucAn SET
		TenToChuc = @TenToChuc,
		MaSanPham = @MaSanPham,
		CoSoKhaoNghiem = @CoSoKhaoNghiem
		where TenToChuc = @TenToChuc
	End
	If @Action = 1 Begin 
		Insert into QLSXThucAn (TenToChuc,MaSanPham,CoSoKhaoNghiem) values (@TenToChuc,@MaSanPham,@CoSoKhaoNghiem) 
	End
end 
go
create procedure UpdateQLMuaBan(
@ToChucBan nvarchar(50)
, @NguoiMua nvarchar(30)
, @MaSanPham nvarchar(10)
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
		NguoiMua = @NguoiMua,
		MaSanPham = @MaSanPham,
		SoLuong = @SoLuong,
		ThoiGian = @ThoiGian
		where ToChucBan = @ToChucBan
	End
	If @Action = 1 Begin 
		Insert into QLMuaBan (ToChucBan,NguoiMua,MaSanPham,SoLuong,ThoiGian) 
			values (@ToChucBan,@NguoiMua,@MaSanPham,@SoLuong,@ThoiGian)
	End
end 
go
create procedure UpdateCamSuDung(
@Ma nvarchar(10)
, @Ten nvarchar(30)
, @MoTa nvarchar(100)
, @Action int
)As Begin
	If @Action = -1 Begin
		Delete from CamSuDung where Ma = @Ma
	End
	If @Action = 0 Begin 
		Update CamSuDung SET 
		Ma = @Ma,
		Ten = @Ten,
		MoTa = @MoTa
		where Ma = @Ma
	End
	If @Action = 1 Begin 
		Insert into CamSuDung (Ma,Ten,MoTa) values (@Ma,@Ten,@MoTa)
	End
end 
go
create procedure UpdateDuocPhepSuDung(
@Ma nvarchar(10)
, @Ten nvarchar(30)
, @MoTa nvarchar(1)
, @Action int
)As Begin
	If @Action = -1 Begin 
		Delete from DuocPhepSuDung where Ma = @Ma 
	End
	If @Action = 0 Begin
		Update DuocPhepSuDung SET 
		Ma = @Ma,
		Ten = @Ten,
		MoTa = @MoTa
		where Ma = @Ma
	End
	If @Action = 1 Begin 
		Insert into DuocPhepSuDung (Ma,Ten,MoTa) values (@Ma,@Ten,@MoTa) 
	End
end 
go
