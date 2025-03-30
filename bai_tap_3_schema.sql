USE [master]
GO
/****** Object:  Database [58kmt]    Script Date: 30/03/2025 3:53:13 CH ******/
CREATE DATABASE [58kmt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'58kmt', FILENAME = N'D:\SQL_MSS2022\58kmt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'58kmt_log', FILENAME = N'D:\SQL_MSS2022\58kmt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [58kmt] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [58kmt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [58kmt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [58kmt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [58kmt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [58kmt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [58kmt] SET ARITHABORT OFF 
GO
ALTER DATABASE [58kmt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [58kmt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [58kmt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [58kmt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [58kmt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [58kmt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [58kmt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [58kmt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [58kmt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [58kmt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [58kmt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [58kmt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [58kmt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [58kmt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [58kmt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [58kmt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [58kmt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [58kmt] SET RECOVERY FULL 
GO
ALTER DATABASE [58kmt] SET  MULTI_USER 
GO
ALTER DATABASE [58kmt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [58kmt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [58kmt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [58kmt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [58kmt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [58kmt] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'58kmt', N'ON'
GO
ALTER DATABASE [58kmt] SET QUERY_STORE = ON
GO
ALTER DATABASE [58kmt] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [58kmt]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[maBM] [nchar](10) NOT NULL,
	[tenBM] [nchar](10) NULL,
	[maKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_BoMon] PRIMARY KEY CLUSTERED 
(
	[maBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id] [int] NOT NULL,
	[id_dk] [nchar](10) NULL,
	[diem] [float] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[id_dk] [nchar](10) NOT NULL,
	[maLopHP] [nchar](10) NULL,
	[maSV] [nchar](10) NULL,
	[DiemThi] [decimal](18, 0) NULL,
	[PhanTramThi] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DKMH] PRIMARY KEY CLUSTERED 
(
	[id_dk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[magv] [nchar](10) NOT NULL,
	[hoten] [nchar](10) NULL,
	[NgaySinh] [date] NULL,
	[maBM] [nchar](10) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[maLop] [nchar](10) NOT NULL,
	[maGV] [nchar](10) NOT NULL,
	[HK] [nchar](10) NOT NULL,
 CONSTRAINT [PK_GVCN] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maGV] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[maKhoa] [nchar](10) NOT NULL,
	[tenKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [nchar](10) NOT NULL,
	[tenLop] [nchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[maLopHP] [nchar](10) NOT NULL,
	[TenLopHP] [nchar](10) NULL,
	[HK] [nchar](10) NULL,
	[maMon] [nchar](10) NULL,
	[maGV] [nchar](10) NULL,
 CONSTRAINT [PK_LopHP] PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[maLop] [nchar](10) NOT NULL,
	[maSV] [nchar](10) NOT NULL,
	[ChucVu] [nchar](10) NULL,
 CONSTRAINT [PK_LopSV] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMon] [nchar](10) NOT NULL,
	[tenMon] [nchar](10) NULL,
	[STC] [nchar](10) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 30/03/2025 3:53:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[maSV] [nchar](10) NOT NULL,
	[hoten] [nchar](10) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_Khoa] FOREIGN KEY([maKhoa])
REFERENCES [dbo].[Khoa] ([maKhoa])
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_Khoa]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_DKMH] FOREIGN KEY([id_dk])
REFERENCES [dbo].[DKMH] ([id_dk])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_DKMH]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_LopHP] FOREIGN KEY([maLopHP])
REFERENCES [dbo].[LopHP] ([maLopHP])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_LopHP]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_SinhVien]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_BoMon] FOREIGN KEY([maBM])
REFERENCES [dbo].[BoMon] ([maBM])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_BoMon]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([magv])
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_GiaoVien]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_Lop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([magv])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_GiaoVien]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_MonHoc] FOREIGN KEY([maMon])
REFERENCES [dbo].[MonHoc] ([maMon])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_MonHoc]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_Lop]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_SinhVien]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [CK_BoMon_maBM] CHECK  (([maBM]<>N'00'))
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [CK_BoMon_maBM]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [CK_BoMon_tenBM] CHECK  (([tenBM]<>N'CNTT'))
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [CK_BoMon_tenBM]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK_Diem_FLOAT] CHECK  (([diem]>=(0) AND [diem]<=(10)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK_Diem_FLOAT]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [CK_GiaoVien_hoten] CHECK  (([hoten]<>N'nguyen'))
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK_GiaoVien_hoten]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [CK_GiaoVien_NgaySinh] CHECK  (([NgaySinh]<'2017-01-01'))
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK_GiaoVien_NgaySinh]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [CK_GVCN_HK] CHECK  (([HK]>(0) AND [HK]<(4)))
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [CK_GVCN_HK]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [CK_GVCN_maGV] CHECK  (([maGV]<>N'10'))
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [CK_GVCN_maGV]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [CK_GVCN_maLop] CHECK  (([maLop]<>N'00'))
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [CK_GVCN_maLop]
GO
ALTER TABLE [dbo].[Khoa]  WITH CHECK ADD  CONSTRAINT [CK_Khoa_tenKhoa] CHECK  (([tenKhoa]<>N'DienTu'))
GO
ALTER TABLE [dbo].[Khoa] CHECK CONSTRAINT [CK_Khoa_tenKhoa]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [CK_Lop_maLop] CHECK  (([maLop]<>N'00'))
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [CK_Lop_maLop]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [CK_Lop_TenLop] CHECK  (([tenLop]<>N'oto'))
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [CK_Lop_TenLop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [CK_LopHP_HK] CHECK  (([HK]>(0) AND [HK]<(4)))
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [CK_LopHP_HK]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [CK_LopHP_TenLop_HP] CHECK  (([TenLopHP]<>N'MayTinh'))
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [CK_LopHP_TenLop_HP]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [CK_LopSV_ChucVu] CHECK  (([ChucVu]<>N'GiaoVien'))
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [CK_LopSV_ChucVu]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [CK_LopSV_maSV] CHECK  (([maSV]<>N'k000'))
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [CK_LopSV_maSV]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [CK_MonHoc_STC] CHECK  (([STC]<(5)))
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [CK_MonHoc_STC]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [CK_SinhVien_name] CHECK  (([hoten]<>N'duong'))
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [CK_SinhVien_name]
GO
USE [master]
GO
ALTER DATABASE [58kmt] SET  READ_WRITE 
GO
