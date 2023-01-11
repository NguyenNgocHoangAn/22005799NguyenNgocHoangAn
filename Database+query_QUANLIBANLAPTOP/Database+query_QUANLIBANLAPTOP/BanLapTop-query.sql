--'123456' MD5 :'e10adc3949ba59abbe56e057f20f883e'


drop view vchitietnhanvien
create view vchitietnhanvien
as
select 
	tenchucvu, manhanvien, tennhanvien, ngaysinh, gioitinh, diachi, sdt, email, nhanvien.ghichu from nhanvien, chucvu
	where nhanvien.machucvu=chucvu.machucvu

go
--
drop view vchitietthanhvien
create view vchitietthanhvien
as
select 
	tenloaithanhvien, mathanhvien, tenthanhvien, ngaysinh, gioitinh, diachi, sdt, email, thanhvien.ghichu from thanhvien, loaithanhvien
	where thanhvien.maloaithanhvien=loaithanhvien.maloaithanhvien

--
create view vmanhanvien_chualap_taikhoan
as
select
	manhanvien from nhanvien where manhanvien not in (select manhanvien from taikhoannhanvien)
go
--select * from vmanhanvien_chualap_taikhoan
--
--create view vmathanhvien_chua_lap???
drop view vchitietlinhkien
go
create view vchitietlinhkien
as
select chitietphieunhap.maphieunhap, tenloailinhkien, linhkien.malinhkien, tenlinhkien, tennhacungcap,
	donvitinh, thoigianbaohanh, soluongton, motalinhkien, linhkien.hinhanh 
	from linhkien, loailinhkien, ChiTietPhieuNhap, PhieuNhap, PhieuDatHang, NhaCungCap
	where linhkien.MaLoaiLinhKien=LoaiLinhKien.MaLoaiLinhKien
	and LinhKien.MaLinhKien=ChiTietPhieuNhap.MaLinhKien
	and PhieuNhap.MaPhieuNhap=chitietphieunhap.MaPhieuNhap
	and PhieuNhap.MaPhieuDatHang=PhieuDatHang.MaPhieuDatHang
	and PhieuDatHang.MaNhaCungCap=NhaCungCap.MaNhaCungCap

--
drop view vphieunhap
create view vphieunhap 
as
select phieunhap.MaPhieuNhap,
		phieunhap.maphieudathang, tennhacungcap, tennhanvien as tennhanvienlapphieunhap, phieunhap.ngaylapphieunhap
		from phieunhap, phieudathang, nhacungcap, nhanvien
		where phieunhap.manhanvienlapphieunhap=nhanvien.manhanvien
		and phieunhap.maphieudathang=PhieuDatHang.MaPhieuDatHang
		and PhieuDatHang.MaNhaCungCap=NhaCungCap.MaNhaCungCap

create view vchitietphieunhap
as
select linhkien.MaLinhKien, tenlinhkien, soluong from chitietphieunhap, linhkien, chitietphieudathang
	where linhkien.malinhkien = chitietphieunhap.MaLinhKien
	and linhkien.malinhkien=ChiTietPhieuDatHang.MaLinhKien
	and ChiTietPhieuNhap.MaPhieuNhap='pn1'


drop view vphieudathang
create view vphieudathang
as
select maphieudathang, tennhacungcap, tennhanvien as tennhanviendathang, ngaylapphieudathang
from phieudathang, nhanvien, NhaCungCap
where NhaCungCap.MaNhaCungCap=PhieuDatHang.MaNhaCungCap
and manhanviendathang=MaNhanVien

create view vchitietphieudathang
as
select tenlinhkien, ChiTietPhieuDatHang.MaLinhKien, soluong, dongia
from ChiTietPhieuDatHang, LinhKien
where ChiTietPhieuDatHang.MaLinhKien=LinhKien.MaLinhKien
and ChiTietPhieuDatHang.MaPhieuDatHang='dh1'


SELECT MALINHKIEN, TENLINHKIEN FROM LINHKIEN

select tenlinhkien, chitietphieudathang.MaLinhKien from linhkien, ChiTietPhieuDatHang where chitietphieudathang.malinhkien = linhkien.malinhkien and MaPhieuDatHang= 'PN0002'


--IF (SELECT SOLUONG FROM ChiTietPhieuDatHang WHERE MALINHKIEN='laptop1' and maphieudathang = 'PD0002')>0 INSERT INTO CHITIETPHIEUNHAP VALUES('PN0002','laptop1')
--	INSERT INTO CHITIETPHIEUNHAP VALUES('PN0003','RAM1')

SELECT MALOAILINHKIEN, MALINHKIEN, TENLINHKIEN FROM LINHKIEN
--drop trigger AutoUpdateNV
--create trigger AutoUpdateNV on Nhanvien
--for insert
--as
--	if((select count(MaNhanVien) from inserted)>0)
--	begin
--		insert into TaiKhoanNhanVien(MaNhanVien) select MaNhanVien from inserted
--	end
----
--drop trigger AutoUpdateTV
----
--create trigger AutoUpdateTV on thanhvien
--for insert
--as
--	if((select count(mathanhvien) from inserted)>0)
--	begin
--		insert into taikhoanthanhvien(mathanhvien) select mathanhvien from inserted
--	end
--
--drop trigger AutoDeleteNV
--create trigger AutoDeleteNV on nhanvien
--for delete
--as
--	if(select count(manhanvien) from deleted)>0
--	begin
--		delete TaiKhoanNhanVien where taikhoannhanvien.manhanvien=(select manhanvien from deleted)
--		--delete ChucVu where chucvu.machucvu=(select machucvu from deleted)
--	end
--