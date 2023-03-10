USE [master]
GO
/****** Object:  Database [QUANLIBANLAPTOP]    Script Date: 02/01/2023 1:44:34 SA ******/
CREATE DATABASE [QUANLIBANLAPTOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLIBANLAPTOP_DATA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QUANLIBANLAPTOP.MDF' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLIBANLAPTOP_LOG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QUANLIBANLAPTOP.LDF' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLIBANLAPTOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLIBANLAPTOP', N'ON'
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET QUERY_STORE = OFF
GO
USE [QUANLIBANLAPTOP]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [QUANLIBANLAPTOP]
GO
/****** Object:  Table [dbo].[LoaiLinhKien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiLinhKien](
	[MaLoaiLinhKien] [nvarchar](50) NOT NULL,
	[TenLoaiLinhKien] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuDatHang] [nvarchar](50) NOT NULL,
	[MaPhieuNhap] [nvarchar](50) NOT NULL,
	[MaNhanVienLapPhieuNhap] [nvarchar](50) NOT NULL,
	[NgayLapPhieuNhap] [smalldatetime] NULL,
 CONSTRAINT [PK__PhieuNha__1470EF3B31C5BF47] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [nvarchar](50) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[DiaChiNhaCungCap] [nvarchar](100) NULL,
	[DienThoaiNhaCungCap] [bigint] NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK__NhaCungC__53DA92053B8C5FEC] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatHang]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatHang](
	[MaPhieuDatHang] [nvarchar](50) NOT NULL,
	[MaNhaCungCap] [nvarchar](50) NULL,
	[MaNhanVienDatHang] [nvarchar](50) NULL,
	[NgayLapPhieuDatHang] [smalldatetime] NULL,
 CONSTRAINT [PK__PhieuDat__2665F4A2233E0DED] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPhieuNhap] [nvarchar](50) NOT NULL,
	[MaLinhKien] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ChiTietP__A4A08E4C8233B5B7] PRIMARY KEY CLUSTERED 
(
	[MaLinhKien] ASC,
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhKien](
	[MaLoaiLinhKien] [nvarchar](50) NOT NULL,
	[MaLinhKien] [nvarchar](50) NOT NULL,
	[TenLinhKien] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[ThoiGianBaoHanh] [int] NULL,
	[SoLuongTon] [int] NULL,
	[MoTaLinhKien] [text] NULL,
	[HinhAnh] [text] NULL,
 CONSTRAINT [PK__LinhKien__05E780BFAB6DC312] PRIMARY KEY CLUSTERED 
(
	[MaLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vchitietlinhkien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vchitietlinhkien]
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
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaChucVu] [nvarchar](50) NOT NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nvarchar](13) NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK__NhanVien__77B2CA4715C12799] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vphieunhap]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vphieunhap] 
as
select phieunhap.MaPhieuNhap,
		phieunhap.maphieudathang, tennhacungcap, tennhanvien as tennhanvienlapphieunhap, phieunhap.ngaylapphieunhap
		from phieunhap, phieudathang, nhacungcap, nhanvien
		where phieunhap.manhanvienlapphieunhap=nhanvien.manhanvien
		and phieunhap.maphieudathang=PhieuDatHang.MaPhieuDatHang
		and PhieuDatHang.MaNhaCungCap=NhaCungCap.MaNhaCungCap
GO
/****** Object:  View [dbo].[vphieudathang]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vphieudathang]
as
select maphieudathang, tennhacungcap, tennhanvien as tennhanviendathang, ngaylapphieudathang
from phieudathang, nhanvien, NhaCungCap
where NhaCungCap.MaNhaCungCap=PhieuDatHang.MaNhaCungCap
and manhanviendathang=MaNhanVien

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](50) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vchitietnhanvien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vchitietnhanvien]
as
select 
	tenchucvu, manhanvien, tennhanvien, ngaysinh, gioitinh, diachi, sdt, email, nhanvien.ghichu from nhanvien, chucvu
	where nhanvien.machucvu=chucvu.machucvu
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiThanhVien] [nvarchar](50) NOT NULL,
	[TenLoaiThanhVien] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaLoaiThanhVien] [nvarchar](50) NULL,
	[MaThanhVien] [nvarchar](50) NOT NULL,
	[TenThanhVien] [nvarchar](50) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [bigint] NULL,
	[Email] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK__ThanhVie__2BE0A0F057ED662F] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vchitietthanhvien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vchitietthanhvien]
as
select 
	tenloaithanhvien, mathanhvien, tenthanhvien, ngaysinh, gioitinh, diachi, sdt, email, thanhvien.ghichu from thanhvien, loaithanhvien
	where thanhvien.maloaithanhvien=loaithanhvien.maloaithanhvien
GO
/****** Object:  Table [dbo].[TaiKhoanNhanVien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanNhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MatKhauNhanVien] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vmanhanvien_chuaphai_lataikhoan]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vmanhanvien_chuaphai_lataikhoan]
as
select
	manhanvien from nhanvien where manhanvien not in (select manhanvien from taikhoannhanvien)
GO
/****** Object:  View [dbo].[vmanhanvien_chualap_taikhoan]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vmanhanvien_chualap_taikhoan]
as
select
	manhanvien from nhanvien where manhanvien not in (select manhanvien from taikhoannhanvien)
GO
/****** Object:  Table [dbo].[ChiTietPhieuDatHang]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDatHang](
	[MaPhieuDatHang] [nvarchar](50) NOT NULL,
	[MaLinhKien] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatHang] ASC,
	[MaLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuMuaHang]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMuaHang](
	[MaPhieuMuaHang] [nvarchar](50) NOT NULL,
	[MaLinhKien] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuaHang] ASC,
	[MaLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[MaPhieuMuaHang] [nvarchar](50) NOT NULL,
	[MaLinhKien] [nvarchar](50) NOT NULL,
	[MaPhieuXuat] [nvarchar](50) NOT NULL,
	[SoLuongXuat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuaHang] ASC,
	[MaLinhKien] ASC,
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[DonViTinh] [nvarchar](50) NOT NULL,
	[MoTaDonViTinh] [text] NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[DonViTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nvarchar](50) NOT NULL,
	[MaThanhVien] [nvarchar](50) NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChiGiaoHang] [nvarchar](100) NULL,
	[SDTKhachHang] [bigint] NULL,
	[NgayMuaHang] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuBaoHanh]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBaoHanh](
	[MaPhieuBaoHanh] [nvarchar](50) NOT NULL,
	[NgayLapPhieuBaoHanh] [datetime] NULL,
	[NgayDuKienHoanThanhBaoHanh] [datetime] NULL,
	[MoTaTinhTrangLinhKien] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuBaoHanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuaHang]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuaHang](
	[MaPhieuMuaHang] [nvarchar](50) NOT NULL,
	[NgayLapMaPhieuMuaHang] [smalldatetime] NULL,
	[MaKhachHang] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPhieuXuat] [nvarchar](50) NOT NULL,
	[NgayLapPhieuXuat] [smalldatetime] NULL,
	[MaPhieuMuaHang] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanThanhVien]    Script Date: 02/01/2023 1:44:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanThanhVien](
	[MaThanhVien] [nvarchar](50) NOT NULL,
	[MatKhauThanhVien] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0001', N'CPU core i3', 20, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0001', N'CPUe2200', 10, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0002', N'laptop1', 3, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0002', N'laptop2', 9, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0002', N'laptop3', 3, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0003', N'RAM1', 100, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0003', N'RAM2', 50, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0004', N'CPU core i3', 46, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0004', N'RAM1', 10, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0004', N'RAM2', 20, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0005', N'laptop1', 3, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0005', N'Loa1', 2, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0006', N'laptop3', 14, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0006', N'Microsoft', 14, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0007', N'KB4G', 6, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0007', N'loa2', 15, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0008', N'ds', 12, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0008', N'KB4G', 1, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0008', N'Loa1', 5, 1)
INSERT [dbo].[ChiTietPhieuDatHang] ([MaPhieuDatHang], [MaLinhKien], [SoLuong], [DonGia]) VALUES (N'PD0008', N'loa2', 5, 1)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0001', N'CPU core i3')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0003', N'CPU core i3')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0001', N'CPUe2200')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0002', N'laptop1')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0004', N'laptop1')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN8001', N'laptop1')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0002', N'laptop2')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0002', N'laptop3')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN8001', N'Loa1')
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieuNhap], [MaLinhKien]) VALUES (N'PN0003', N'RAM1')
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'Admin', N'Administrator', N'Qu?n lí ngu?i dùng, nhân viên và thành viên.')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'BaoHanh', N'Nhân viên bảo hành', N'')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'BH', N'Nhân viên bán hàng', N'')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'BV', N'Bảo vệ', NULL)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'GD', N'Giám đốc', NULL)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'Mana', N'Quản lí sản phẩm', N'Manager')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'PartTime', N'Nhân viên làm bán thời gian', N'')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'TK', N'Thư kí', NULL)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'TT', N'Tiếp tân', NULL)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'VS', N'Vệ sĩ cho giám đốc', N'Sercurity')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (N'XN001', N'NHÂN VIÊN XUẤT NHẬP', N'')
GO
INSERT [dbo].[DonViTinh] ([DonViTinh], [MoTaDonViTinh]) VALUES (N'cái', NULL)
INSERT [dbo].[DonViTinh] ([DonViTinh], [MoTaDonViTinh]) VALUES (N'đống', NULL)
INSERT [dbo].[DonViTinh] ([DonViTinh], [MoTaDonViTinh]) VALUES (N'mớ', NULL)
GO
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML3', N'CPU core i3', N'RAM2GBKingMax', N'cái', 0, NULL, N'', N'D:\pictures\laptop\28.jpg')
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML2', N'CPUe2200', N'Intel pentium e2200 ', N'cái', 0, NULL, N'', N'D:\pictures\laptop\26.jpg')
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML10', N'ds', N'ds', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML6', N'KB4G', N'KB for gamer', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML1', N'laptop1', N'Thinkpad2', N'cái', 0, 100, N'', N'D:\pictures\laptop\1.jpg')
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML1', N'laptop2', N'ASUS', N'cái', 0, NULL, N'', N'D:\pictures\laptop\14.jpg')
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML1', N'laptop3', N'k46jra', N'cái', 0, NULL, N'', N'D:\pictures\laptop\14.jpg')
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML10', N'Loa1', N'Loa beats', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML10', N'loa2', N'load Sony', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML9', N'MainGB', N'Main Gigabyte', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML0', N'Microsoft', N'MS mouse rewrew', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML3', N'RAM1', N'RAM2GBKingMax', N'cái', 0, NULL, N'', N'D:\pictures\laptop\18.jpg')
INSERT [dbo].[LinhKien] ([MaLoaiLinhKien], [MaLinhKien], [TenLinhKien], [DonViTinh], [ThoiGianBaoHanh], [SoLuongTon], [MoTaLinhKien], [HinhAnh]) VALUES (N'ML3', N'RAM2', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML0', N'Loại khác', NULL)
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML1', N'máy tính xách tay', N'laptop')
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML10', N'Loa', N'')
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML11', N'Chuột', N'')
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML199', N'lap thop', N'')
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML2', N'CPU', NULL)
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML20', N'Case ', N'PC')
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML3', N'RAM', NULL)
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML4', N'HDD', NULL)
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML5', N'SSD', NULL)
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML6', N'Bàn phím', NULL)
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML8', N'Màn hình', NULL)
INSERT [dbo].[LoaiLinhKien] ([MaLoaiLinhKien], [TenLoaiLinhKien], [GhiChu]) VALUES (N'ML9', N'Main', NULL)
GO
INSERT [dbo].[LoaiThanhVien] ([MaLoaiThanhVien], [TenLoaiThanhVien], [GhiChu]) VALUES (N'MLTV1', N'Khách VIP', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiThanhVien], [TenLoaiThanhVien], [GhiChu]) VALUES (N'MLTV2', N'khách thường', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiThanhVien], [TenLoaiThanhVien], [GhiChu]) VALUES (N'MLTV3', N'Khách thường xuyên', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiThanhVien], [TenLoaiThanhVien], [GhiChu]) VALUES (N'MLTV4', N'Trung thành', N'')
INSERT [dbo].[LoaiThanhVien] ([MaLoaiThanhVien], [TenLoaiThanhVien], [GhiChu]) VALUES (N'MLTV5', N'ti?m nang', N'')
GO
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc1', N'asus', N'', 0, N'asus@asia.com', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc10', N'gigabyte', N'', 122345678, N'', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc11', N'HTC', N'Taiwan', 0, N'', N'cung c?p các lo?i smartphone d? ch?i nhau')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc2', N'hp', NULL, NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc3', N'lenovo', N'', 0, N'', N'Nhà s?n xu?t máy tính Thinkpad')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc5', N'acer', NULL, NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc6', N'apple1', N'', 908111222, N'', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc7', N'intel', NULL, NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc8', N'kingston', N'', 0, N'', N'Chuyên v? RAM')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [DienThoaiNhaCungCap], [Email], [GhiChu]) VALUES (N'ncc9', N'genuis', N'', 0, N'', N'Chuyên ph? ki?n')
GO
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'Admin', N'Administrator', N'Lê Văn Định', CAST(N'1992-05-08T00:00:00' AS SmallDateTime), 1, N'01649785461', N'HCMC', N'lvdinh.tvtsth@gmail.com', N'Xin chào admin!')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'BV', N'lvdinh', N'Rừng A Rú', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 1, N'Tây Tạng', N'', N'rung@ru.com', N'cân nhắc lên thay phó phòng')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'Mana', N'Manager', N'Trương Tam Phong', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 1, N'', N'', N'', N'')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'PartTime', N'PT1', N'Lê Thị B', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 0, N'', N'', N'', N'')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'GD', N'TaLaGiamDoc', N'Like a boss', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 1, N'', N'', N'', N'Bá đạo! :v')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'TK', N'TK1', N'Trần Kim Mỹ', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 0, N'', N'0', N'', N'')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'TT', N'TT1', N'Nguyễn Doanh Doanh', CAST(N'1992-12-12T00:00:00' AS SmallDateTime), 0, N'', N'', N'', N'')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'Mana', N'XN1111', N'Đào Văn Dũng', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 0, N'', N'0', N'', N'')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'XN001', N'xuatnhap1', N'Nguyễn Văn A', CAST(N'1992-12-08T00:00:00' AS SmallDateTime), 1, N'Thanh Hóa', N'1649785461', N'lvdinh.tvtsth@gmail.com', N'')
INSERT [dbo].[NhanVien] ([MaChucVu], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'XN001', N'xuatnhap2', N'Nguyễn Kim Ngân', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 0, N'', N'0', N'', N'')
GO
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0001', N'ncc7', N'XN1111', CAST(N'1991-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0002', N'ncc1', N'xuatnhap1', CAST(N'1991-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0003', N'ncc8', N'XN1111', CAST(N'1991-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0004', N'ncc10', N'XN1111', CAST(N'1991-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0005', N'ncc3', N'xuatnhap2', CAST(N'1991-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0006', N'ncc6', N'xuatnhap2', CAST(N'1991-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0007', N'ncc9', N'xuatnhap2', CAST(N'1991-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuDatHang] ([MaPhieuDatHang], [MaNhaCungCap], [MaNhanVienDatHang], [NgayLapPhieuDatHang]) VALUES (N'PD0008', N'ncc11', N'xuatnhap1', CAST(N'2013-12-12T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[PhieuNhap] ([MaPhieuDatHang], [MaPhieuNhap], [MaNhanVienLapPhieuNhap], [NgayLapPhieuNhap]) VALUES (N'PD0001', N'PN0001', N'xuatnhap2', CAST(N'2012-12-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuNhap] ([MaPhieuDatHang], [MaPhieuNhap], [MaNhanVienLapPhieuNhap], [NgayLapPhieuNhap]) VALUES (N'PD0002', N'PN0002', N'XN1111', CAST(N'2012-12-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuNhap] ([MaPhieuDatHang], [MaPhieuNhap], [MaNhanVienLapPhieuNhap], [NgayLapPhieuNhap]) VALUES (N'PD0001', N'PN0003', N'XN1111', CAST(N'2012-12-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuNhap] ([MaPhieuDatHang], [MaPhieuNhap], [MaNhanVienLapPhieuNhap], [NgayLapPhieuNhap]) VALUES (N'PD0006', N'PN0004', N'xuatnhap1', CAST(N'2012-12-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[PhieuNhap] ([MaPhieuDatHang], [MaPhieuNhap], [MaNhanVienLapPhieuNhap], [NgayLapPhieuNhap]) VALUES (N'PD0008', N'PN8001', N'xuatnhap1', CAST(N'2013-12-12T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'Administrator', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'xuatnhap1', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'lvdinh', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'Manager', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'XN1111', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'TaLaGiamDoc', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'TT1', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'TK1', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [MatKhauNhanVien]) VALUES (N'PT1', N'e10adc3949ba59abbe56e057f20f883e')
GO
INSERT [dbo].[TaiKhoanThanhVien] ([MaThanhVien], [MatKhauThanhVien]) VALUES (N'tv2', N'e10adc3949ba59abbe56e057f20f883e')
GO
INSERT [dbo].[ThanhVien] ([MaLoaiThanhVien], [MaThanhVien], [TenThanhVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'MLTV1', N'MLTV1', N'Nguyễn Văn A', CAST(N'1991-01-01T00:00:00' AS SmallDateTime), 1, N'123214451', 0, N'', N'')
INSERT [dbo].[ThanhVien] ([MaLoaiThanhVien], [MaThanhVien], [TenThanhVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [GhiChu]) VALUES (N'MLTV1', N'TV2', N'Obama Barrack', CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 1, N'USA', 0, N'', N'')
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__MaLin__30F848ED] FOREIGN KEY([MaLinhKien])
REFERENCES [dbo].[LinhKien] ([MaLinhKien])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang] CHECK CONSTRAINT [FK__ChiTietPh__MaLin__30F848ED]
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__MaPhi__3F466844] FOREIGN KEY([MaPhieuDatHang])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDatHang])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang] CHECK CONSTRAINT [FK__ChiTietPh__MaPhi__3F466844]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuaHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__MaLin__300424B4] FOREIGN KEY([MaLinhKien])
REFERENCES [dbo].[LinhKien] ([MaLinhKien])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuaHang] CHECK CONSTRAINT [FK__ChiTietPh__MaLin__300424B4]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuaHang]  WITH CHECK ADD FOREIGN KEY([MaPhieuMuaHang])
REFERENCES [dbo].[PhieuMuaHang] ([MaPhieuMuaHang])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__MaLin__31EC6D26] FOREIGN KEY([MaLinhKien])
REFERENCES [dbo].[LinhKien] ([MaLinhKien])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK__ChiTietPh__MaLin__31EC6D26]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__MaPhi__36B12243] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK__ChiTietPh__MaPhi__36B12243]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[PhieuXuat] ([MaPhieuXuat])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaPhieuMuaHang], [MaLinhKien])
REFERENCES [dbo].[ChiTietPhieuMuaHang] ([MaPhieuMuaHang], [MaLinhKien])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK__KhachHang__MaTha__398D8EEE] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK__KhachHang__MaTha__398D8EEE]
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD FOREIGN KEY([DonViTinh])
REFERENCES [dbo].[DonViTinh] ([DonViTinh])
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD  CONSTRAINT [FK__LinhKien__MaLoai__34C8D9D1] FOREIGN KEY([MaLoaiLinhKien])
REFERENCES [dbo].[LoaiLinhKien] ([MaLoaiLinhKien])
GO
ALTER TABLE [dbo].[LinhKien] CHECK CONSTRAINT [FK__LinhKien__MaLoai__34C8D9D1]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaChuc__38996AB5] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__MaChuc__38996AB5]
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK__PhieuDatH__MaNha__19DFD96B] FOREIGN KEY([MaNhanVienDatHang])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuDatHang] CHECK CONSTRAINT [FK__PhieuDatH__MaNha__19DFD96B]
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK__PhieuDatH__MaNha__35BCFE0A] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuDatHang] CHECK CONSTRAINT [FK__PhieuDatH__MaNha__35BCFE0A]
GO
ALTER TABLE [dbo].[PhieuMuaHang]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__PhieuNhap__MaNha__1AD3FDA4] FOREIGN KEY([MaNhanVienLapPhieuNhap])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK__PhieuNhap__MaNha__1AD3FDA4]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__PhieuNhap__MaNha__32E0915F] FOREIGN KEY([MaNhanVienLapPhieuNhap])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK__PhieuNhap__MaNha__32E0915F]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__PhieuNhap__MaPhi__403A8C7D] FOREIGN KEY([MaPhieuDatHang])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDatHang])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK__PhieuNhap__MaPhi__403A8C7D]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaPhieuMuaHang])
REFERENCES [dbo].[PhieuMuaHang] ([MaPhieuMuaHang])
GO
ALTER TABLE [dbo].[TaiKhoanNhanVien]  WITH CHECK ADD  CONSTRAINT [FK__TaiKhoanN__MaNha__33D4B598] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoanNhanVien] CHECK CONSTRAINT [FK__TaiKhoanN__MaNha__33D4B598]
GO
ALTER TABLE [dbo].[TaiKhoanThanhVien]  WITH CHECK ADD  CONSTRAINT [FK__TaiKhoanT__MaTha__3A81B327] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[TaiKhoanThanhVien] CHECK CONSTRAINT [FK__TaiKhoanT__MaTha__3A81B327]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK__ThanhVien__MaLoa__6754599E] FOREIGN KEY([MaLoaiThanhVien])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiThanhVien])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK__ThanhVien__MaLoa__6754599E]
GO
ALTER TABLE [dbo].[ChucVu]  WITH CHECK ADD  CONSTRAINT [CK_MaChucVu_MUST_NOT_EMPTY] CHECK  (([MaChucVu]<>''))
GO
ALTER TABLE [dbo].[ChucVu] CHECK CONSTRAINT [CK_MaChucVu_MUST_NOT_EMPTY]
GO
USE [master]
GO
ALTER DATABASE [QUANLIBANLAPTOP] SET  READ_WRITE 
GO
