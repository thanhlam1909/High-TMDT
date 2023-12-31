USE [master]
GO
/****** Object:  Database [High_TMDT]    Script Date: 1/2/2024 5:18:12 PM ******/
CREATE DATABASE [High_TMDT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testpd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\testpd.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testpd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\testpd_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [High_TMDT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [High_TMDT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [High_TMDT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [High_TMDT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [High_TMDT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [High_TMDT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [High_TMDT] SET ARITHABORT OFF 
GO
ALTER DATABASE [High_TMDT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [High_TMDT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [High_TMDT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [High_TMDT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [High_TMDT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [High_TMDT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [High_TMDT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [High_TMDT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [High_TMDT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [High_TMDT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [High_TMDT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [High_TMDT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [High_TMDT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [High_TMDT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [High_TMDT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [High_TMDT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [High_TMDT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [High_TMDT] SET RECOVERY FULL 
GO
ALTER DATABASE [High_TMDT] SET  MULTI_USER 
GO
ALTER DATABASE [High_TMDT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [High_TMDT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [High_TMDT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [High_TMDT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [High_TMDT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [High_TMDT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'High_TMDT', N'ON'
GO
ALTER DATABASE [High_TMDT] SET QUERY_STORE = ON
GO
ALTER DATABASE [High_TMDT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [High_TMDT]
GO
/****** Object:  Table [dbo].[BoViXuLyLaptop]    Script Date: 1/2/2024 5:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoViXuLyLaptop](
	[ID_Bo_Vi_Xu_Ly] [nvarchar](255) NOT NULL,
	[Hang_SX] [nvarchar](255) NULL,
	[Ten_Bo_Vi_Xu_Ly] [nvarchar](255) NULL,
	[Toc_Do] [decimal](18, 0) NULL,
	[So_Nhan] [int] NULL,
	[So_Luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Bo_Vi_Xu_Ly] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardDoHoaTichHop]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardDoHoaTichHop](
	[idCardTichHop] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Card] [nvarchar](255) NULL,
	[Nha_SX] [nvarchar](255) NULL,
	[Kien_Truc] [nvarchar](255) NULL,
	[VRAM] [int] NULL,
	[Giao_Tiep] [nvarchar](255) NULL,
	[Bang_Thon] [nvarchar](255) NULL,
	[Toc_Do_Nhan] [int] NULL,
	[So_Loi_Cuda] [int] NULL,
	[DirectX] [nvarchar](255) NULL,
	[OpenGL] [nvarchar](255) NULL,
	[Vulkan] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCardTichHop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardRoi]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardRoi](
	[idCardRoi] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Card] [nvarchar](255) NULL,
	[Nha_SX] [nvarchar](255) NULL,
	[Kien_Truc] [nvarchar](255) NULL,
	[VRAM] [int] NULL,
	[Giao_thuc] [nvarchar](255) NULL,
	[Bang_Thong_Bo_Nho] [nvarchar](255) NULL,
	[Toc_Do_Nhan] [int] NULL,
	[So_Loi] [int] NULL,
	[DirectX] [nvarchar](255) NULL,
	[OpenGL] [nvarchar](255) NULL,
	[Vulkan] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCardRoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [nvarchar](255) NULL,
	[IDListSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGiaTriDonHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHinhSanPhamLaptop]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHinhSanPhamLaptop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSanPham] [nvarchar](255) NULL,
	[idBoViXuLy] [nvarchar](255) NULL,
	[dungLuongRAM] [int] NULL,
	[idocung] [int] NULL,
	[soLuongOCung] [int] NULL,
	[soLuongRAM] [int] NULL,
	[mau] [int] NULL,
	[idRAM] [nvarchar](255) NULL,
	[idKichThuocManHinh] [int] NULL,
	[kieuBanPhim] [nvarchar](255) NULL,
	[chuot] [nvarchar](255) NULL,
	[camera] [nvarchar](255) NULL,
	[loa] [nvarchar](255) NULL,
	[kieuPin] [nvarchar](255) NULL,
	[sacPin] [nvarchar](255) NULL,
	[trongLuong] [nvarchar](255) NULL,
	[tencardroi] [int] NULL,
	[tencardtichhop] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongKetNoi]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongKetNoi](
	[idCongKetNoi] [nvarchar](255) NOT NULL,
	[tenCong] [nvarchar](255) NULL,
	[loaiCong] [nvarchar](255) NULL,
	[tocDoTruyenDuLieu] [nvarchar](255) NULL,
	[chucNang] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCongKetNoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongKetNoiCuaSanPham]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongKetNoiCuaSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[idCongKetNoi] [nvarchar](255) NULL,
	[soluongcong] [int] NULL,
	[Idcauhinhsanpham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachKhuyenMai]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachKhuyenMai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhuyenMai] [int] NULL,
	[MaDonDat] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachSanPhamKhuyenMai]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachSanPhamKhuyenMai](
	[ID] [int] NOT NULL,
	[MaSP] [nvarchar](255) NULL,
	[MaKM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCodes]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCodes](
	[ID] [int] NOT NULL,
	[MaGiamGia] [nvarchar](255) NULL,
	[DieuKienKhuyenMai] [nvarchar](max) NULL,
	[NgayBatDau] [date] NULL,
	[NgayHetHan] [date] NULL,
	[TienGiamGia] [int] NULL,
	[SoLuongKhuyenMai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSanPham]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSanPham](
	[idDongSanPham] [int] IDENTITY(1,1) NOT NULL,
	[idhang_loaiSanPham] [int] NULL,
	[tenDongSanPham] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDongSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSSP_DonHang]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSSP_DonHang](
	[Ma_DSSP_DH] [nvarchar](255) NOT NULL,
	[Ma_SP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[Ma_DH] [nvarchar](255) NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_DSSP_DonHang] PRIMARY KEY CLUSTERED 
(
	[Ma_DSSP_DH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteProducts]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteProducts](
	[ID] [nvarchar](255) NOT NULL,
	[IDNguoiDung] [nvarchar](255) NULL,
	[IDSanPham] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiThieuSanPhamLaptop]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiThieuSanPhamLaptop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_SP] [nvarchar](255) NULL,
	[Tieu_De_SP] [nvarchar](255) NULL,
	[Thu_Tu_Tieu_De] [int] NULL,
	[Link_Anh] [nvarchar](255) NULL,
	[Thu_Tu_Anh] [int] NULL,
	[Link_Video] [nvarchar](255) NULL,
	[Thu_Tu_Video] [int] NULL,
	[Noidung] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanPham]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanPham](
	[Id_Hang_SP] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Hang_SP] [nvarchar](255) NOT NULL,
	[AnhHang] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Hang_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuatLoaiSanPham]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuatLoaiSanPham](
	[Id_Hang_Loai_SP] [int] IDENTITY(1,1) NOT NULL,
	[Id_Hang_SP] [int] NULL,
	[Id_Loai_SP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Hang_Loai_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhPhuSanPhamLaptop]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhPhuSanPhamLaptop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSanPham] [nvarchar](255) NULL,
	[imageUrlPhu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[Id_Loai_SP] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Loai_SP] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Loai_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManHinhLaptop]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinhLaptop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kichThuoc] [float] NULL,
	[doPhanGiai] [nvarchar](255) NULL,
	[congNgheManHinh] [nvarchar](255) NULL,
	[tanSo] [int] NULL,
	[doSang] [int] NULL,
	[loaiManHinh] [nvarchar](255) NULL,
	[tyLeKhungHinh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mau]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mau](
	[idMau] [int] IDENTITY(1,1) NOT NULL,
	[tenMau] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OCungLaptop]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OCungLaptop](
	[idOOCung] [int] IDENTITY(1,1) NOT NULL,
	[tenOOCung] [nvarchar](255) NULL,
	[dungLuongOOCung] [nvarchar](255) NULL,
	[tocDoDocOOCung] [nvarchar](255) NULL,
	[tocDoGhiOOCung] [nvarchar](255) NULL,
	[loaiOOCung] [nvarchar](255) NULL,
	[giaoTiepOOCung] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idOOCung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [nvarchar](255) NOT NULL,
	[TrangThai] [nvarchar](255) NULL,
	[NgayDatHang] [date] NULL,
	[IDGioHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[ID] [int] NOT NULL,
	[IDDonHang] [nvarchar](255) NULL,
	[DanhSachMaKhuyenMai] [nvarchar](max) NULL,
	[PhiVanChuyen] [int] NULL,
	[PhuongThucThanhToan] [nvarchar](255) NULL,
	[TongSoTienThanhToan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductListOder]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductListOder](
	[Ma_DSDH] [int] NOT NULL,
	[Ma_DonHang] [nvarchar](255) NULL,
	[Ma_SP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_ProductListOder] PRIMARY KEY CLUSTERED 
(
	[Ma_DSDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductListsCart]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductListsCart](
	[IDListSanPham] [int] IDENTITY(1,1) NOT NULL,
	[IDSanPham] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDListSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionProgramContents]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionProgramContents](
	[ID] [int] NOT NULL,
	[IDChuongTrinhKhuyenMai] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThuTuNoiDung] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[ThuTuAnh] [int] NULL,
	[Video] [varchar](max) NULL,
	[ThuTuVideo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionPrograms]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionPrograms](
	[ID] [int] NOT NULL,
	[TenChuongTrinh] [nvarchar](255) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAM]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAM](
	[idRAM] [nvarchar](255) NOT NULL,
	[dungLuongRAM] [nvarchar](255) NULL,
	[kieuRAM] [nvarchar](255) NULL,
	[tocDoHoatDong] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ID] [nvarchar](255) NOT NULL,
	[IDNguoiDung] [nvarchar](255) NULL,
	[IDSanPham] [nvarchar](255) NULL,
	[DiemDanhGia] [int] NULL,
	[NoiDungDanhGia] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamLaptop]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamLaptop](
	[id] [nvarchar](255) NOT NULL,
	[tenSanPham] [nvarchar](255) NOT NULL,
	[thuTuSanPham] [int] NULL,
	[anhChinh] [nvarchar](255) NULL,
	[gia] [int] NULL,
	[giaGiam] [int] NULL,
	[idHangLoaiSanPham] [int] NULL,
	[MaDongSanPham] [int] NULL,
	[ngayThemSanPham] [datetime] NULL,
	[TrangThaiSp] [nvarchar](50) NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAddresses]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [nvarchar](255) NULL,
	[Dia_Chi_Nha] [nvarchar](255) NULL,
	[PhuongXa] [nvarchar](255) NULL,
	[QuanHuyen] [nvarchar](255) NULL,
	[ThanhPhoTinh] [nvarchar](255) NULL,
	[QuocGia] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [nvarchar](255) NOT NULL,
	[TenNguoiDung] [nvarchar](255) NULL,
	[TenDangNhap] [nvarchar](255) NULL,
	[MatKhau] [nvarchar](255) NULL,
	[MatKhauNhapLai] [nvarchar](255) NULL,
	[Anh] [nvarchar](255) NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[HieuLuc] [int] NULL,
	[LoaiNguoiDung] [nvarchar](255) NULL,
	[SoDienThoai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViewedProducts]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViewedProducts](
	[ID] [int] NOT NULL,
	[UserID] [nvarchar](255) NULL,
	[ProductID] [nvarchar](255) NULL,
	[ViewedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wireles_SP]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wireles_SP](
	[Ma_Wireless_SP] [int] NOT NULL,
	[Ma_Wireless] [nvarchar](255) NULL,
	[Ma_CHSP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wireless]    Script Date: 1/2/2024 5:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wireless](
	[idWireless] [nvarchar](255) NOT NULL,
	[tenWireless] [nvarchar](255) NULL,
	[tocDoKetNoi] [nvarchar](255) NULL,
	[bangTanHoTro] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idWireless] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'12450h', N'Intel', N'Core i5-12450H', CAST(2700 AS Decimal(18, 0)), 8, 12)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'12500h', N'Intel', N'Core i5-12500H', CAST(2500 AS Decimal(18, 0)), 12, 16)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'12650h', N'Intel', N'Core i7-12650H', CAST(2300 AS Decimal(18, 0)), 10, 16)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'12700h', N'Intel', N'Core i7-12700H', CAST(2700 AS Decimal(18, 0)), 14, 20)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'13450hx', N'Intel', N'Intel Core i5-13450HX', CAST(5 AS Decimal(18, 0)), 10, 16)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'13500h', N'Intel', N'Intel Core i5-13500H', CAST(4500 AS Decimal(18, 0)), 12, 16)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'i5-13600HX', N'Intel', N'Intel Core i5-13600HX', CAST(5 AS Decimal(18, 0)), 14, 20)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'i7-13700HX', N'Intel', N'Intel Core i7-13700HX', CAST(5 AS Decimal(18, 0)), 16, 24)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'i7-13850HX', N'Intel', N'Intel Core i7-13850HX', CAST(5 AS Decimal(18, 0)), 20, 28)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'i9-12950HX', N'Intel', N'Intel Core i9-12950HX', CAST(5 AS Decimal(18, 0)), 16, 24)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'i9-13900HX', N'Intel', N'Intel Core i9-13900HX', CAST(5 AS Decimal(18, 0)), 24, 32)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'i9-13950HX', N'Intel', N'Intel Core i9-13950HX', CAST(6 AS Decimal(18, 0)), 24, 32)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'i9-13980HX', N'Intel', N'Intel Core i9-13980HX', CAST(6 AS Decimal(18, 0)), 24, 32)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'Ryzen 7 7745HX', N'AMD', N'AMD Ryzen 7 7745HX', CAST(5 AS Decimal(18, 0)), 8, 16)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'Ryzen 9 7845HX', N'AMD', N'AMD Ryzen 9 7845HX', CAST(5 AS Decimal(18, 0)), 14, 24)
INSERT [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly], [Hang_SX], [Ten_Bo_Vi_Xu_Ly], [Toc_Do], [So_Nhan], [So_Luong]) VALUES (N'Ryzen 9 7945HX', N'AMD', N'AMD Ryzen 9 7945HX', CAST(5 AS Decimal(18, 0)), 16, 32)
GO
SET IDENTITY_INSERT [dbo].[CardDoHoaTichHop] ON 

INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (1, N'Intel Iris Xe Graphics', N'Intel', N'Xe LP', 4, N'PCIe 4.0x8', N'LPDDR4X', 1600, 96, N'12 Ultimate', N'4.6', N'1.2')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (2, N'AMD Radeon Vega 8', N'AMD', N'Vega', 8, N'PCIe 3.0 x8', N'GDDR5', 1600, 512, N'12 Ultimate', N'12', N'1.2')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (3, N'NVIDIA GeForce MX550', N'NVIDIA', N'Max-Q', 2, N'PCIe 4.0 x4', N'GDDR6', 1600, 640, N'11', N'4.6', N'1.2')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (4, N'Intel HD Graphics', N'Intel', N'Gen 9', 2, N'Integrated', N'DDR4', 1000, 0, N'11', N'4.0', N'1.0')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (5, N'Intel UHD Graphics', N'Intel', N'Gen 10', 4, N'Integrated', N'DDR4', 1200, 0, N'12', N'4.5', N'1.1')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (6, N'Intel Iris Plus', N'Intel', N'Iris Plus', 4, N'Integrated', N'LPDDR4', 1600, 128, N'12', N'4.5', N'1.2')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (7, N'Intel Arc Graphics', N'Intel', N'Arc', 16, N'PCIe 4.0 x16', N'GDDR6', 2000, 4096, N'12 Ultimate', N'4.6', N'1.2')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (8, N'AMD Radeon', N'AMD', N'N/A', 0, N'Integrated', N'N/A', 0, 0, N'N/A', N'N/A', N'N/A')
INSERT [dbo].[CardDoHoaTichHop] ([idCardTichHop], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_Tiep], [Bang_Thon], [Toc_Do_Nhan], [So_Loi_Cuda], [DirectX], [OpenGL], [Vulkan]) VALUES (9, N'AMD Radeon HD', N'AMD', N'N/A', 0, N'Integrated', N'N/A', 0, 0, N'N/A', N'N/A', N'N/A')
SET IDENTITY_INSERT [dbo].[CardDoHoaTichHop] OFF
GO
SET IDENTITY_INSERT [dbo].[CardRoi] ON 

INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (2, N'GeForce RTX 3080 Ti 175W', N'NVIDIA', N'Ampere', 16, N'2x PCIe 8 chân2', N'912,4 GB/s', 1640, 7424, N'DirectX 12.1', N'OpenGL 4.6', N'Vulkan')
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (3, N'GeForce RTX 3070 Ti 115W', N'NVIDIA', N'Ampere', 8, N'2x PCIe 8 chân', N'448 GB/sec', 1410, 5888, N'DirectX 12.1', N'OpenGL 4.6', NULL)
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (4, N'AMD Radeon RX 6500M', N'AMD', N'RDNA 2', 4, N'PCIe 4.0 x4', N'2000 MHz', 2191, 1024, N'DirectX 12', N'OpenGL 4.6', N'Vulkan 1.3')
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (5, N'GeForce RTX 2050', N'NVIDIA', N'GA107', 4, N'PCIe 4.0', N'96 GB/sec', 1155, 2048, N'DirectX 12.1 GPU Boost', N'OpenGL 4.6', N'Vulkan API')
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (6, N'GeForce GTX 1650 Ti', N'NVIDIA', N'TU-117', 4, N'PCIe 3.0 x16', N'192GB / s', 1450, 1024, N'DirectX 12', N'OpenGL 4.6', NULL)
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (7, N'Radeon 780M', N'AMD', N'RDNA3', NULL, N'PCIe 4.0 x8', NULL, 3000, 768, N'DirectX 12', N'OpenGL 4.6', N'Vulkan 1.3')
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (8, N'RTX A2000', N'NVIDIA', N'Ampere', 4, N'PCIe 4.0 x16', N'192 GB/sec', 562, 3328, N'DirectX 12', N'OpenGL 4.6', NULL)
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (9, N'GeForce RTX 3060 90W', N'NVIDIA', N'GA106 Ampere', 6, N'PCIe 4.0 x16', N'336 GB/sec', 1425, 3840, N'DirectX 12', N'OpenGL 4.6', NULL)
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (10, N'GeForce RTX 2060 90W', N'NVIDIA', N'Turing', 6, N'PCIe 3.0 x16', N'336 GB/sec', 1350, 1920, N'DirectX 12.1', N'OpenGL 4.5', N'Vulkan API')
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (11, N'GeForce GTX 1660 Ti', N'NVIDIA', N'TU116/Turing', 6, N'PCIe 3.0 x16', N'288 GB/sec', 1590, 1536, N'DirectX 12', N'OpenGL 4.5', N'Vulkan API')
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (12, N'RTX 3050 Laptop', N'NVIDIA', N'Ampere', 4, N'PCIe 4.0', N'GDDR6', 1500, 2048, N'12 Ultimate', N'4.6', N'1.2')
INSERT [dbo].[CardRoi] ([idCardRoi], [Ten_Card], [Nha_SX], [Kien_Truc], [VRAM], [Giao_thuc], [Bang_Thong_Bo_Nho], [Toc_Do_Nhan], [So_Loi], [DirectX], [OpenGL], [Vulkan]) VALUES (13, N'RTX 3050 Ti Laptop', N'NVIDIA', N'Ampere', 4, N'PCIe 4.0', N'GDDR6', 1585, 2560, N'12 Ultimate', N'4.6', N'1.2')
SET IDENTITY_INSERT [dbo].[CardRoi] OFF
GO
SET IDENTITY_INSERT [dbo].[CauHinhSanPhamLaptop] ON 

INSERT [dbo].[CauHinhSanPhamLaptop] ([id], [idSanPham], [idBoViXuLy], [dungLuongRAM], [idocung], [soLuongOCung], [soLuongRAM], [mau], [idRAM], [idKichThuocManHinh], [kieuBanPhim], [chuot], [camera], [loa], [kieuPin], [sacPin], [trongLuong], [tencardroi], [tencardtichhop]) VALUES (1, N'A1405VA-KM095W', N'13500h', 3200, 4, 1, 8, 4, N'DDR4-8GB-3200', 18, N'Bàn phím tiêu chuẩn 

', N'Cảm ứng đa điểm

', N'720p HD camera ; With privacy shutter

', N'2 Loa', N'3 cell /50WHrs

', N'Đi kèm

', N'1.6 kg

', NULL, 1)
SET IDENTITY_INSERT [dbo].[CauHinhSanPhamLaptop] OFF
GO
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'Cong_Ket_Noi_1', N'USB 3.0', N'USB Type-A', N'5 Gbps', N'Kết nối thiết bị ngoại vi')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'Cong_Ket_Noi_2', N'HDMI', N'HDMI 2.0', N'18 Gbps', N'Kết nối màn hình ngoài')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'Cong_Ket_Noi_3', N'Thunderbolt 4', N'USB Type-C', N'40 Gbps', N'Kết nối đa năng')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'Cong_Ket_Noi_4', N'Jack tai nghe 3.5mm', N'Audio', N'N/A', N'Kết nối tai nghe, loa')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'Cong_Ket_Noi_5', N'Ð?u d?c th? nh? SD', N'SD card reader', N'N/A', N'Đọc thẻ nhớ SD')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'Cong_Ket_Noi_6', N'USB 2.0', N'USB Type-A', N'5 Gbps', N'Kết nối thiết bị ngoại vi')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'DISPLAY_PORT_1.2', N'DisplayPort 1.2', N'DisplayPort', N'21.6 Gbps (với chế độ Multi-Stream Transport - MST)', N'Hỗ trợ video và âm thanh, có khả năng truyền tín hiệu multi-stream, hỗ trợ HDR (High Dynamic Range), độ phân giải 8K.')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'DisplayPort_1.4', N'DisplayPort 1.4', N'DisplayPort', N'32.4 Gbps', N'Hỗ trợ video và âm thanh, có khả năng truyền tín hiệu multi-stream, hỗ trợ HDR (High Dynamic Range), độ phân giải 8K.')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'HDMI', N'HDMI', N'HDMI', N'18', N'Truy?n hình và Âm thanh')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'Mini_HDMI', N'Mini HDMI', N'HDMI', N'10', N'Truy?n hình và Âm thanh')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'SD_CARD', N'SD (Secure Digital)', N'SD', N'phụ thuộc vào phiên bản và loại thẻ SD', N'Đọc và ghi dữ liệu từ/đến thẻ nhớ SD.')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'USB_Type_C', N'USB Type C', N'Type C', N'10', N'D? li?u và Ngu?n di?n')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'USB2.0', N'USB 2.0', N'USB-A', N'480 Mbps', N'Truyền dữ liệu')
INSERT [dbo].[CongKetNoi] ([idCongKetNoi], [tenCong], [loaiCong], [tocDoTruyenDuLieu], [chucNang]) VALUES (N'USB3.0', N'USB 3.0', N'USB-A', N'5 Gbps', N'Truyền dữ liệu')
GO
SET IDENTITY_INSERT [dbo].[DongSanPham] ON 

INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (1, 1, N'Laptop Asus VivoBook')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (2, 1, N'Laptop Asus ZenBook')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (3, 1, N'Laptop Asus ExpertBook')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (4, 1, N'Laptop Asus X Series')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (5, 2, N'Laptop Lenovo Ideapad')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (6, 2, N'Laptop Lenovo ThinkPad')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (7, 2, N'Laptop Lenovo ThinkBook')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (8, 2, N'Laptop Lenovo Yoga')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (9, 5, N'Laptop Acer Aspire')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (10, 5, N'Laptop Acer Swift')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (11, 5, N'Laptop Acer TravelMate')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (12, 7, N'Laptop Dell Inspiron')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (13, 7, N'Laptop Dell Vostro')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (14, 7, N'Laptop Dell Latitude')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (15, 7, N'Laptop Dell XPS')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (16, 4, N'Laptop HP Pavilion')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (17, 4, N'Laptop HP Probook')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (18, 4, N'Laptop HP Elitebook')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (19, 4, N'Laptop HP Envy')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (20, 4, N'Laptop HP Spectre')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (21, 4, N'Laptop HP 15s')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (22, 4, N'Laptop HP 15s')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (23, 3, N'Laptop MSI Modern')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (24, 3, N'Laptop MSI Prestige')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (25, 3, N'Laptop MSI Summit')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (26, 8, N'Laptop LG Gram 14')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (27, 8, N'Laptop LG Gram 15')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (28, 8, N'Laptop LG Gram 16')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (29, 8, N'Laptop LG Gram 17')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (30, 6, N'Gigabyte U4 UD')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (31, 6, N'Gigabyte U5 UD')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (32, 6, N'Gigabyte A5 X5')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (33, 6, N'Gigabyte Aorus 15-YD')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (34, 6, N'Gigabyte Aorus 17-YD')
INSERT [dbo].[DongSanPham] ([idDongSanPham], [idhang_loaiSanPham], [tenDongSanPham]) VALUES (35, 6, N'Gigabyte Aero 16-YD')
SET IDENTITY_INSERT [dbo].[DongSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[GioiThieuSanPhamLaptop] ON 

INSERT [dbo].[GioiThieuSanPhamLaptop] ([ID], [ID_SP], [Tieu_De_SP], [Thu_Tu_Tieu_De], [Link_Anh], [Thu_Tu_Anh], [Link_Video], [Thu_Tu_Video], [Noidung]) VALUES (1, N'A1405VA-KM095W', N'Laptop Asus Vivobook Pro 14 OLED A1405VA-KM095W
Tuyên ngôn sức mạnh. Sống động thị giác', 1, N'44758_laptop_asus_vivobook_14_oled_a1405va_km095w__2_ (1).jpg', 2, NULL, NULL, N'Tỏa sáng với cả thế giới cùng ASUS Vivobook 14 OLED mạnh mẽ, chiếc laptop tích hợp nhiều tính năng với màn hình OLED rực rỡ, gam màu DCI-P3 đẳng cấp điện ảnh.')
INSERT [dbo].[GioiThieuSanPhamLaptop] ([ID], [ID_SP], [Tieu_De_SP], [Thu_Tu_Tieu_De], [Link_Anh], [Thu_Tu_Anh], [Link_Video], [Thu_Tu_Video], [Noidung]) VALUES (3, N'A1405VA-KM095W', N'Hiệu năng mạnh mẽ hàng đầu phân khúc
', 3, NULL, NULL, NULL, NULL, N'ASUS Vivobook 14 OLED giúp bạn hoàn thành mọi tác vụ một cách nhanh chóng ở bất cứ đâu, dù ở cơ quan, ở nhà hay khi đi ra ngoài. ')
SET IDENTITY_INSERT [dbo].[GioiThieuSanPhamLaptop] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSanPham] ON 

INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (1, N'Asus', N'tải xuống (4).png')
INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (2, N'Lenovo', N'tải xuống (5).png')
INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (3, N'Msi', N'tải xuống.jpg')
INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (4, N'HP', N'tải xuống (1).png')
INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (5, N'Acer', N'tải xuống (3).png')
INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (6, N'Gigabyte', N'tải xuống (2).png')
INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (7, N'Dell', N'tải xuống (1).jpg')
INSERT [dbo].[HangSanPham] ([Id_Hang_SP], [Ten_Hang_SP], [AnhHang]) VALUES (8, N'LG', N'tải xuống.png')
SET IDENTITY_INSERT [dbo].[HangSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSanXuatLoaiSanPham] ON 

INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (1, 1, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (2, 2, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (3, 3, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (4, 4, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (5, 5, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (6, 6, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (7, 7, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (8, 8, 1)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (9, 1, 2)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (10, 2, 2)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (11, 3, 2)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (12, 4, 2)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (13, 5, 2)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (14, 6, 2)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (15, 7, 2)
INSERT [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP], [Id_Hang_SP], [Id_Loai_SP]) VALUES (16, 8, 2)
SET IDENTITY_INSERT [dbo].[HangSanXuatLoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([Id_Loai_SP], [Ten_Loai_SP]) VALUES (1, N'Laptop Văn Phòng')
INSERT [dbo].[LoaiSanPham] ([Id_Loai_SP], [Ten_Loai_SP]) VALUES (2, N'Laptop Gaming')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ManHinhLaptop] ON 

INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (1, 15.6, N'Full HD (1920 x 1080)', N'IPS', 60, 250, N'Cảm Ứng', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (2, 14, N'Full HD (1920 x 1080)', N'IPS', 120, 300, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (3, 13.3, N'QHD+ (3200 x 1800)', N'OLED', 60, 400, N'Cảm Ứng', N'16:10')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (4, 15.6, N'1920 x 1080', N'IPS', 60, 400, N'Cảm Ứng', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (5, 16, N'1920 x 1080', N'IPS', 60, 500, N'Không Có', N'16:10')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (6, 14, N'1366x768', N'IPS', 60, 200, N'Cảm Ứng', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (7, 17.3, N'2560x1440', N'IPS', 144, 300, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (8, 13, N'1920 x 1080', N'OLED', 60, 280, N'Cảm Ứng', N'16:10')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (9, 15, N'1920 x 1080', N'IPS', 75, 200, N'Không Có', N'16:10')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (10, 14, N'1920x1080', N'IPS', 144, 250, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (11, 15.6, N'2560x1440', N'OLED', 240, 300, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (12, 17, N'3840x2160', N'IPS', 120, 400, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (13, 15.6, N'1920x1080', N'TN', 144, 300, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (14, 14.1, N'2560x1600', N'IPS', 120, 300, N'Không Có', N'16:10')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (15, 17.3, N'1920x1080', N'OLED', 144, 350, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (16, 15.6, N'2880x1620', N'IPS', 144, 320, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (17, 13.3, N'2560x1440', N'TN', 240, 280, N'Không Có', N'16:9')
INSERT [dbo].[ManHinhLaptop] ([id], [kichThuoc], [doPhanGiai], [congNgheManHinh], [tanSo], [doSang], [loaiManHinh], [tyLeKhungHinh]) VALUES (18, 14, N'2.8K', N'OLED', 60, 300, N'Không Có', N'16:10')
SET IDENTITY_INSERT [dbo].[ManHinhLaptop] OFF
GO
SET IDENTITY_INSERT [dbo].[Mau] ON 

INSERT [dbo].[Mau] ([idMau], [tenMau]) VALUES (1, N'Đen')
INSERT [dbo].[Mau] ([idMau], [tenMau]) VALUES (2, N'Trắng')
INSERT [dbo].[Mau] ([idMau], [tenMau]) VALUES (3, N'Xám')
INSERT [dbo].[Mau] ([idMau], [tenMau]) VALUES (4, N'Bạc')
SET IDENTITY_INSERT [dbo].[Mau] OFF
GO
SET IDENTITY_INSERT [dbo].[OCungLaptop] ON 

INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (1, N'SSD 1TB', N'1TB', N'550 MB/s', N'520 MB/s', N'SSD', N'SATA III')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (2, N'SSD 1TB', N'1TB', N'3500 MB/s', N'3000 MB/s', N'SSD', N'PCIe 4.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (3, N'HDD 2TB', N'2TB', N'7200 RPM', NULL, N'HDD', N'SATA III')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (4, N'SSD 512GB', N'512GB', N'3500 MB/s', N'2300 MB/s', N'SSD', N'PCIe 3.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (5, N'HDD 1TB', N'1TB', N'5400 RPM', NULL, N'HDD', N'SATA III')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (6, N'SSD 256GB', N'256GB', N'500 MB/s', N'450 MB/s', N'SSD', N'M.2 SATA')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (7, N'SSD 256GB', N'512GB', N'2500 MB/s', N'2300 MB/s', N'SSD', N'PCIe 3.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (8, N'SSD 256GB', N'512GB', N'3500 MB/s', N'3300 MB/s', N'SSD', N'PCIe 4.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (9, N'HDD 500GB', N'500GB', N'5400 RPM', NULL, N'HDD', N'SATA III')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (10, N'SSD 2TB', N'2TB', N'3500 MB/s', N'3000 MB/s', N'SSD', N'PCIe 4.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (11, N'HDD 4TB', N'4TB', N'7200 RPM', NULL, N'HDD', N'SATA III')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (12, N'SSD 1TB', N'1TB', N'3500 MB/s', N'2500 MB/s', N'SSD', N'PCIe 3.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (13, N'SSD 500GB', N'500GB', N'2800 MB/s', N'2200 MB/s', N'SSD', N'PCIe 4.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (14, N'SSD 500GB', N'500GB', N'1800 MB/s', N'1200 MB/s', N'SSD', N'PCIe 3.0')
INSERT [dbo].[OCungLaptop] ([idOOCung], [tenOOCung], [dungLuongOOCung], [tocDoDocOOCung], [tocDoGhiOOCung], [loaiOOCung], [giaoTiepOOCung]) VALUES (15, N'SSD 2TB', N'2TB', N'5000 MB/s', N'4400 MB/s', N'SSD', N'PCIe 3.0')
SET IDENTITY_INSERT [dbo].[OCungLaptop] OFF
GO
INSERT [dbo].[RAM] ([idRAM], [dungLuongRAM], [kieuRAM], [tocDoHoatDong]) VALUES (N'DDR4-8GB-3200', N'8GB', N'DDR4', N'3200MHz')
INSERT [dbo].[RAM] ([idRAM], [dungLuongRAM], [kieuRAM], [tocDoHoatDong]) VALUES (N'DDR5-16GB', N'16GB', N'DDR5', N'4800MHz')
INSERT [dbo].[RAM] ([idRAM], [dungLuongRAM], [kieuRAM], [tocDoHoatDong]) VALUES (N'DDR5-32GB', N'32GB', N'DDR5', N'5200MHz')
INSERT [dbo].[RAM] ([idRAM], [dungLuongRAM], [kieuRAM], [tocDoHoatDong]) VALUES (N'LPDDR4X-16GB', N'16GB', N'LPDDR4X', N'4266MHz')
INSERT [dbo].[RAM] ([idRAM], [dungLuongRAM], [kieuRAM], [tocDoHoatDong]) VALUES (N'LPDDR5-16GB', N'16GB', N'LPDDR5', N'5500MHz')
GO
INSERT [dbo].[SanPhamLaptop] ([id], [tenSanPham], [thuTuSanPham], [anhChinh], [gia], [giaGiam], [idHangLoaiSanPham], [MaDongSanPham], [ngayThemSanPham], [TrangThaiSp], [soluong]) VALUES (N'A1405VA-KM095W', N'Laptop Asus Vivobook 14 OLED A1405VA-KM095W', 1, N'44758_laptop_asus_vivobook_14_oled_a1405va_km095w__2_.jpg', 21990000, 17490000, 1, 1, CAST(N'2023-12-21T00:00:00.000' AS DateTime), N'Còn Hàng', 200)
GO
SET IDENTITY_INSERT [dbo].[UserAddresses] ON 

INSERT [dbo].[UserAddresses] ([ID], [IDNguoiDung], [Dia_Chi_Nha], [PhuongXa], [QuanHuyen], [ThanhPhoTinh], [QuocGia]) VALUES (1, N'af8eb2d9-c433-4392-ad4e-f4e4cf6ec0b6', N'295 Phạm', N'3', N'8', N'TPHCM', N'VN')
INSERT [dbo].[UserAddresses] ([ID], [IDNguoiDung], [Dia_Chi_Nha], [PhuongXa], [QuanHuyen], [ThanhPhoTinh], [QuocGia]) VALUES (3, N'a481cd46-f197-4e71-8cce-caf743d0f6ca', N'295 Phạm', N'9', N'9', N'9', N'VN')
INSERT [dbo].[UserAddresses] ([ID], [IDNguoiDung], [Dia_Chi_Nha], [PhuongXa], [QuanHuyen], [ThanhPhoTinh], [QuocGia]) VALUES (4, N'5c229f76-6efb-4cc4-b241-0a31468941f4', N'295 Phạm', N'3', N'9', N'9', N'bn')
SET IDENTITY_INSERT [dbo].[UserAddresses] OFF
GO
INSERT [dbo].[Users] ([ID], [TenNguoiDung], [TenDangNhap], [MatKhau], [MatKhauNhapLai], [Anh], [GioiTinh], [Email], [HieuLuc], [LoaiNguoiDung], [SoDienThoai]) VALUES (N'1', N'Admin', N'admin', N'hashed_password', N'hashed_password', NULL, N'Nam', N'admin@example.com', 1, N'Admin', 123456789)
INSERT [dbo].[Users] ([ID], [TenNguoiDung], [TenDangNhap], [MatKhau], [MatKhauNhapLai], [Anh], [GioiTinh], [Email], [HieuLuc], [LoaiNguoiDung], [SoDienThoai]) VALUES (N'5c229f76-6efb-4cc4-b241-0a31468941f4', N'Lê Thanh Lâm', N'admin12@example.com', N'hashed_password', N'hashed_password', N'638397335960269457_Screenshot 2023-12-24 164420.png', N'Nam', N'ghenhot1222@gmail.com', 1, N'User', NULL)
INSERT [dbo].[Users] ([ID], [TenNguoiDung], [TenDangNhap], [MatKhau], [MatKhauNhapLai], [Anh], [GioiTinh], [Email], [HieuLuc], [LoaiNguoiDung], [SoDienThoai]) VALUES (N'a481cd46-f197-4e71-8cce-caf743d0f6ca', N'Lê Thanh Lâm', N'Ghenhot99', N'hashed_password', N'hashed_password', N'638397334467588737_Screenshot 2023-12-24 164420.png', N'Nam', N'ghenhot122@gmail.com', 1, N'User', 332325664)
INSERT [dbo].[Users] ([ID], [TenNguoiDung], [TenDangNhap], [MatKhau], [MatKhauNhapLai], [Anh], [GioiTinh], [Email], [HieuLuc], [LoaiNguoiDung], [SoDienThoai]) VALUES (N'af8eb2d9-c433-4392-ad4e-f4e4cf6ec0b6', N'sd', N'sd', N'admin123', N'admin123', N'638396353528362776_Screenshot 2023-12-24 164042.png', N'Nam', N'ghenhot12@gmail.com', 1, N'User', 123456789)
GO
INSERT [dbo].[Wireless] ([idWireless], [tenWireless], [tocDoKetNoi], [bangTanHoTro]) VALUES (N'1', N'Wi-Fi 5GHz', N'High Speed', N'5GHz')
INSERT [dbo].[Wireless] ([idWireless], [tenWireless], [tocDoKetNoi], [bangTanHoTro]) VALUES (N'2', N'Wi-Fi 2.4GHz', N'Standard Speed', N'2.4GHz')
INSERT [dbo].[Wireless] ([idWireless], [tenWireless], [tocDoKetNoi], [bangTanHoTro]) VALUES (N'3', N'Wi-Fi 6GHz', N'Ultra High Speed', N'6GHz')
INSERT [dbo].[Wireless] ([idWireless], [tenWireless], [tocDoKetNoi], [bangTanHoTro]) VALUES (N'4', N'Wi-Fi 6E', N'Ultra High Speed', N'6E')
INSERT [dbo].[Wireless] ([idWireless], [tenWireless], [tocDoKetNoi], [bangTanHoTro]) VALUES (N'5', N'Bluetooth 4.0', N'Low Energy', N'4.0')
INSERT [dbo].[Wireless] ([idWireless], [tenWireless], [tocDoKetNoi], [bangTanHoTro]) VALUES (N'6', N'Bluetooth 5.0', N'Enhanced Data Rate', N'5.0')
INSERT [dbo].[Wireless] ([idWireless], [tenWireless], [tocDoKetNoi], [bangTanHoTro]) VALUES (N'7', N'Bluetooth 4.2', N'Low Energy', N'4.2')
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([IDListSanPham])
REFERENCES [dbo].[ProductListsCart] ([IDListSanPham])
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD FOREIGN KEY([idBoViXuLy])
REFERENCES [dbo].[BoViXuLyLaptop] ([ID_Bo_Vi_Xu_Ly])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD FOREIGN KEY([idKichThuocManHinh])
REFERENCES [dbo].[ManHinhLaptop] ([id])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD FOREIGN KEY([idRAM])
REFERENCES [dbo].[RAM] ([idRAM])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD FOREIGN KEY([mau])
REFERENCES [dbo].[Mau] ([idMau])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD  CONSTRAINT [FK_CardDoHoaTichHop_SanPhamLaptop] FOREIGN KEY([tencardtichhop])
REFERENCES [dbo].[CardDoHoaTichHop] ([idCardTichHop])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop] CHECK CONSTRAINT [FK_CardDoHoaTichHop_SanPhamLaptop]
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD  CONSTRAINT [FK_CauHinhSanPhamLaptop_CardRoi] FOREIGN KEY([tencardroi])
REFERENCES [dbo].[CardRoi] ([idCardRoi])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop] CHECK CONSTRAINT [FK_CauHinhSanPhamLaptop_CardRoi]
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop]  WITH CHECK ADD  CONSTRAINT [FK_OOCungLaptop_CauHinhSanPhamLaptop] FOREIGN KEY([idocung])
REFERENCES [dbo].[OCungLaptop] ([idOOCung])
GO
ALTER TABLE [dbo].[CauHinhSanPhamLaptop] CHECK CONSTRAINT [FK_OOCungLaptop_CauHinhSanPhamLaptop]
GO
ALTER TABLE [dbo].[CongKetNoiCuaSanPham]  WITH CHECK ADD FOREIGN KEY([idCongKetNoi])
REFERENCES [dbo].[CongKetNoi] ([idCongKetNoi])
GO
ALTER TABLE [dbo].[CongKetNoiCuaSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CongKetNoiCuaSanPham_CauHinhSanPhamLaptop] FOREIGN KEY([Idcauhinhsanpham])
REFERENCES [dbo].[CauHinhSanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[CongKetNoiCuaSanPham] CHECK CONSTRAINT [FK_CongKetNoiCuaSanPham_CauHinhSanPhamLaptop]
GO
ALTER TABLE [dbo].[DanhSachKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachKhuyenMai_DiscountCodes] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[DiscountCodes] ([ID])
GO
ALTER TABLE [dbo].[DanhSachKhuyenMai] CHECK CONSTRAINT [FK_DanhSachKhuyenMai_DiscountCodes]
GO
ALTER TABLE [dbo].[DanhSachKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachKhuyenMai_Orders] FOREIGN KEY([MaDonDat])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[DanhSachKhuyenMai] CHECK CONSTRAINT [FK_DanhSachKhuyenMai_Orders]
GO
ALTER TABLE [dbo].[DanhSachSanPhamKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachSanPhamKhuyenMai_DiscountCodes] FOREIGN KEY([MaKM])
REFERENCES [dbo].[DiscountCodes] ([ID])
GO
ALTER TABLE [dbo].[DanhSachSanPhamKhuyenMai] CHECK CONSTRAINT [FK_DanhSachSanPhamKhuyenMai_DiscountCodes]
GO
ALTER TABLE [dbo].[DanhSachSanPhamKhuyenMai]  WITH CHECK ADD  CONSTRAINT [fk_DanhSachSanPhamKhuyenMai_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[DanhSachSanPhamKhuyenMai] CHECK CONSTRAINT [fk_DanhSachSanPhamKhuyenMai_SanPham]
GO
ALTER TABLE [dbo].[DongSanPham]  WITH CHECK ADD  CONSTRAINT [FK_DongSanPham_HangSanXuatLoaiSanPham] FOREIGN KEY([idhang_loaiSanPham])
REFERENCES [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP])
GO
ALTER TABLE [dbo].[DongSanPham] CHECK CONSTRAINT [FK_DongSanPham_HangSanXuatLoaiSanPham]
GO
ALTER TABLE [dbo].[DSSP_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DSSP_DonHang_Orders] FOREIGN KEY([Ma_DH])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[DSSP_DonHang] CHECK CONSTRAINT [FK_DSSP_DonHang_Orders]
GO
ALTER TABLE [dbo].[DSSP_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DSSP_DonHang_SanPhamLaptop] FOREIGN KEY([Ma_SP])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[DSSP_DonHang] CHECK CONSTRAINT [FK_DSSP_DonHang_SanPhamLaptop]
GO
ALTER TABLE [dbo].[FavoriteProducts]  WITH CHECK ADD FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[FavoriteProducts]  WITH CHECK ADD FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[GioiThieuSanPhamLaptop]  WITH CHECK ADD FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[HangSanXuatLoaiSanPham]  WITH CHECK ADD FOREIGN KEY([Id_Loai_SP])
REFERENCES [dbo].[LoaiSanPham] ([Id_Loai_SP])
GO
ALTER TABLE [dbo].[HangSanXuatLoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_HangSanXuatLoaiSanPham_HangSanPham] FOREIGN KEY([Id_Hang_SP])
REFERENCES [dbo].[HangSanPham] ([Id_Hang_SP])
GO
ALTER TABLE [dbo].[HangSanXuatLoaiSanPham] CHECK CONSTRAINT [FK_HangSanXuatLoaiSanPham_HangSanPham]
GO
ALTER TABLE [dbo].[HinhAnhPhuSanPhamLaptop]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([IDGioHang])
REFERENCES [dbo].[Carts] ([ID])
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([IDDonHang])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[ProductListOder]  WITH CHECK ADD  CONSTRAINT [FK_ProductListOder_Orders] FOREIGN KEY([Ma_DonHang])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[ProductListOder] CHECK CONSTRAINT [FK_ProductListOder_Orders]
GO
ALTER TABLE [dbo].[ProductListOder]  WITH CHECK ADD  CONSTRAINT [FK_ProductListOder_SanPhamLaptop] FOREIGN KEY([Ma_SP])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[ProductListOder] CHECK CONSTRAINT [FK_ProductListOder_SanPhamLaptop]
GO
ALTER TABLE [dbo].[ProductListsCart]  WITH CHECK ADD  CONSTRAINT [FK_ProductListsCart_SanPhamLaptop] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[ProductListsCart] CHECK CONSTRAINT [FK_ProductListsCart_SanPhamLaptop]
GO
ALTER TABLE [dbo].[PromotionProgramContents]  WITH CHECK ADD FOREIGN KEY([IDChuongTrinhKhuyenMai])
REFERENCES [dbo].[PromotionPrograms] ([ID])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[SanPhamLaptop]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamLaptop_DongSanPham] FOREIGN KEY([MaDongSanPham])
REFERENCES [dbo].[DongSanPham] ([idDongSanPham])
GO
ALTER TABLE [dbo].[SanPhamLaptop] CHECK CONSTRAINT [FK_SanPhamLaptop_DongSanPham]
GO
ALTER TABLE [dbo].[SanPhamLaptop]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamLaptop_HangSanXuatLoaiSanPham2] FOREIGN KEY([idHangLoaiSanPham])
REFERENCES [dbo].[HangSanXuatLoaiSanPham] ([Id_Hang_Loai_SP])
GO
ALTER TABLE [dbo].[SanPhamLaptop] CHECK CONSTRAINT [FK_SanPhamLaptop_HangSanXuatLoaiSanPham2]
GO
ALTER TABLE [dbo].[UserAddresses]  WITH CHECK ADD FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[ViewedProducts]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[SanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[ViewedProducts]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Wireles_SP]  WITH CHECK ADD  CONSTRAINT [FK_Wireles_SP_CauHinhSanPhamLaptop] FOREIGN KEY([Ma_CHSP])
REFERENCES [dbo].[CauHinhSanPhamLaptop] ([id])
GO
ALTER TABLE [dbo].[Wireles_SP] CHECK CONSTRAINT [FK_Wireles_SP_CauHinhSanPhamLaptop]
GO
ALTER TABLE [dbo].[Wireles_SP]  WITH CHECK ADD  CONSTRAINT [FK_Wireles_SP_Wireless] FOREIGN KEY([Ma_Wireless])
REFERENCES [dbo].[Wireless] ([idWireless])
GO
ALTER TABLE [dbo].[Wireles_SP] CHECK CONSTRAINT [FK_Wireles_SP_Wireless]
GO
USE [master]
GO
ALTER DATABASE [High_TMDT] SET  READ_WRITE 
GO
