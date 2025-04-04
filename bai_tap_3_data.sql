USE [58kmt]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'001       ', N'mt        ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'002       ', N'tdh       ')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'k1        ', N'a         ', N'001       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'k2        ', N'b         ', N'002       ')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'01        ', N'a         ', CAST(N'2000-01-01' AS Date), N'k1        ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'02        ', N'a         ', CAST(N'1999-02-15' AS Date), N'k2        ')
GO
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'01        ', N'a         ', N'2         ')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'02        ', N'b         ', N'4         ')
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'0001      ', N'abc       ', N'1         ', N'01        ', N'01        ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'0002      ', N'bcd       ', N'3         ', N'02        ', N'02        ')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'01        ', N'maytinh   ')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'02        ', N'tdh       ')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'03        ', N'dt        ')
GO
INSERT [dbo].[GVCN] ([maLop], [maGV], [HK]) VALUES (N'01        ', N'01        ', N'1         ')
INSERT [dbo].[GVCN] ([maLop], [maGV], [HK]) VALUES (N'02        ', N'02        ', N'3         ')
GO
INSERT [dbo].[SinhVien] ([maSV], [hoten], [NgaySinh]) VALUES (N'k123      ', N'duc       ', CAST(N'1999-01-01' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoten], [NgaySinh]) VALUES (N'k124      ', N'b         ', CAST(N'1999-01-02' AS Date))
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (N'a1        ', N'0001      ', N'k123      ', CAST(9 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (N'a2        ', N'0002      ', N'k124      ', CAST(10 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)))
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, N'a1        ', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, N'a2        ', 10)
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'01        ', N'k123      ', N'sv        ')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'02        ', N'k124      ', N'sv        ')
GO
