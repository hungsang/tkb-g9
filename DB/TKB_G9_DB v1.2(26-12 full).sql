USE [TKB_G9]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[KhoiLop] [nvarchar](50) NULL,
	[CaHoc] [nvarchar](20) NULL,
	[SiSo] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lop] ON
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (1, N'10A1', N'10', N'Chiều', 45, N'Lớp tuyển')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (2, N'10A2', N'10', N'Chiều', 65, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (3, N'10A3', N'10', N'Chiều', 60, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (4, N'11A1', N'11', N'Sáng', 45, N'Lớp tuyển')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (5, N'11A2', N'11', N'Sáng', 50, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (6, N'11A3', N'11', N'Sáng', 50, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (7, N'12A1', N'12', N'Sáng', 45, N'Lớp tuyển')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (8, N'12A2', N'12', N'Sáng', 55, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (9, N'12A3', N'12', N'Sáng', 55, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (10, N'10A4', N'10', N'Chiều', 40, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (11, N'10A5', N'10', N'Chiều', 40, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (12, N'10A6', N'10', N'Chiều', 40, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (13, N'10A7', N'10', N'Chiều', 40, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (14, N'10A8', N'10', N'Chiều', 40, N'Lớp thường')
SET IDENTITY_INSERT [dbo].[Lop] OFF
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (1, N'Admin')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (2, N'Giáo vụ')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (3, N'Giáo viên')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (4, N'Học sinh')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiPhong] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (1, N'Phòng học')
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (2, N'Phòng thực hành')
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
/****** Object:  Table [dbo].[LoaiMonHoc]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonHoc](
	[MaLoaiMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiMonHoc] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiMonHoc] PRIMARY KEY CLUSTERED 
(
	[MaLoaiMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiMonHoc] ON
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (1, N'KHTN')
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (2, N'KHXH')
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (3, N'Phụ')
SET IDENTITY_INSERT [dbo].[LoaiMonHoc] OFF
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[TongSoTietSang] [int] NULL,
	[TongSoTietChieu] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[QuyDinh] ([TongSoTietSang], [TongSoTietChieu]) VALUES (6, 6)
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[MaTKB] [int] IDENTITY(1,1) NOT NULL,
	[MaLop] [int] NULL,
	[NamHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThoiKhoaBieu] PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThoiKhoaBieu] ON
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (136, 1, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (137, 2, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (138, 3, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (139, 10, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (140, 11, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (141, 12, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (142, 13, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (143, 14, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (144, 4, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (145, 5, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (146, 6, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (147, 7, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (148, 8, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (149, 9, N'2012')
SET IDENTITY_INSERT [dbo].[ThoiKhoaBieu] OFF
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](200) NULL,
	[MatKhau] [varchar](200) NULL,
	[MaLoaiTaiKhoan] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (1, N'admin', N'96E79218965EB72C92A549DD5A330112', 1)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (2, N'ltluan', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (3, N'phtrong', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (4, N'nltha', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (5, N'nthien', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (6, N'ndkhoa', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (7, N'nttuyen', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (8, N'nttdung', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (9, N'dtthuy', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (10, N'ncngoc', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (11, N'kdhung', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (12, N'ntctu', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (13, N'nnphuong', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (14, N'tkmy', N'96E79218965EB72C92A549DD5A330112', 3)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
/****** Object:  Table [dbo].[Phong]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](200) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MaLoaiPhong] [int] NULL,
	[SucChua] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Phong] ON
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (1, N'Phòng 1', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (2, N'Phòng 2', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (3, N'Phòng 3', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (4, N'Phòng 4', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (5, N'Phòng 5', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (6, N'Phòng 6', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (7, N'Phòng 8', N'trống', 1, 100)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (8, N'Phòng 9', N'trống', 1, 100)
SET IDENTITY_INSERT [dbo].[Phong] OFF
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenMonHoc] [nvarchar](200) NULL,
	[MoTa] [nvarchar](1000) NULL,
	[MaLoaiMonHoc] [int] NULL,
	[MonChinh] [int] NULL,
	[HeSoMonHoc] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
	[SoTiet] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MonHoc] ON
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (1, N'Văn', N'Văn', 2, NULL, 2, N'Văn', 4)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (2, N'Toán', N'Toán', 1, NULL, 2, N'Toán', 4)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (3, N'Anh', N'Anh', 2, NULL, 1, N'Anh', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (4, N'Hóa', N'Hóa', 1, NULL, 1, N'Hóa', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (5, N'Sinh', N'Sinh', 1, NULL, 1, N'Sinh', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (6, N'Lý', N'Lý', 1, NULL, 1, N'Lý', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (7, N'Địa', N'Địa', 2, NULL, 1, N'Địa', 1)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (8, N'Sử', N'Sử', 2, NULL, 1, N'Sử', 1)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (9, N'Công nghệ', N'Công nghệ', 3, NULL, 1, N'Công nghệ', 1)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (10, N'TD', N'Thể dục', 3, NULL, 1, N'Thể dục', 1)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[TenGiaoVien] [nvarchar](200) NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MaMonHoc] [int] NULL,
	[TenTK] [varchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GiaoVien] ON
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (1, N'Lê Thành Luân', N'Nam', CAST(0x81070B00 AS Date), NULL, NULL, NULL, 1, N'ltluan')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (2, N'Phạm Hoàng Trọng', N'Nam', CAST(0xEF080B00 AS Date), NULL, NULL, NULL, 2, N'phtrong')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (3, N'Nguyễn Lê Thu Hà', N'Nữ', CAST(0xA40E0B00 AS Date), NULL, NULL, NULL, 2, N'nltha')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (4, N'Ngô Thị Hiền', N'Nam', CAST(0xC6150B00 AS Date), NULL, NULL, NULL, 3, N'nthien')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (5, N'Nguyễn Đăng Khoa', N'Nam', CAST(0xFB0E0B00 AS Date), NULL, NULL, NULL, 4, N'ndkhoa')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (6, N'Nguyễn Thị Tuyền', N'Nữ', CAST(0xB7EF0A00 AS Date), NULL, NULL, NULL, 4, N'nttuyen')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (7, N'Nguyễn Thị Thùy Dung', N'Nữ', CAST(0x13120B00 AS Date), NULL, NULL, NULL, 5, N'nttdung')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (8, N'Đỗ Thu Thủy', N'Nữ', CAST(0x7B0A0B00 AS Date), NULL, NULL, NULL, 6, N'dtthuy')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (9, N'Nguyễn Cẩm Ngọc', N'Nữ', CAST(0x84130B00 AS Date), NULL, NULL, NULL, 7, N'ncngoc')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (10, N'Khúc Duy Hưng', N'Nam', CAST(0x13120B00 AS Date), NULL, NULL, NULL, 8, N'kdhung')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (11, N'Nguyễn Thị Cẩm Tú', N'Nữ', CAST(0x7B0A0B00 AS Date), NULL, NULL, NULL, 9, N'ntctu')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (12, N'Nguyễn Ngọc Phượng', N'Nữ', CAST(0x84130B00 AS Date), NULL, NULL, NULL, 10, N'nnphuong')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (15, N'Trương Kiều My', N'Nữ', CAST(0x84130B00 AS Date), N'88 Lê Đức Thọ', N'1900 1560', N'4', NULL, N'tkmy')
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
/****** Object:  Table [dbo].[ChiTietTKB]    Script Date: 12/26/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTKB](
	[MaChiTietTKB] [int] IDENTITY(1,1) NOT NULL,
	[MaTKB] [int] NULL,
	[MaMonHoc] [int] NULL,
	[MaGiaoVien] [int] NULL,
	[MaPhong] [int] NULL,
	[TietBatDau] [int] NULL,
	[TietKetThuc] [int] NULL,
	[Thu] [int] NULL,
 CONSTRAINT [PK_ChiTietTKB] PRIMARY KEY CLUSTERED 
(
	[MaChiTietTKB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietTKB] ON
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1, 136, 1, 1, 1, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2, 136, 1, 1, 1, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (3, 136, 1, 1, 1, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (4, 136, 1, 1, 1, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (5, 136, 2, 2, 1, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (6, 136, 2, 2, 1, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (7, 136, 2, 2, 1, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (8, 136, 2, 2, 1, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (9, 136, 3, 4, 1, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (10, 136, 3, 4, 1, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (11, 136, 3, 4, 1, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (12, 136, 4, 5, 1, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (13, 136, 4, 5, 1, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (14, 136, 4, 5, 1, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (15, 136, 5, 7, 1, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (16, 136, 5, 7, 1, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (17, 136, 5, 7, 1, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (18, 136, 6, 8, 1, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (19, 136, 6, 8, 1, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (20, 136, 6, 8, 1, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (21, 136, 7, 9, 1, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (22, 136, 8, 10, 1, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (23, 136, 9, 11, 1, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (24, 136, 10, 12, 1, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (25, 137, 1, 1, 7, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (26, 137, 1, 1, 7, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (27, 137, 1, 1, 7, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (28, 137, 1, 1, 7, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (29, 137, 2, 2, 7, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (30, 137, 2, 2, 7, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (31, 137, 2, 2, 7, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (32, 137, 2, 2, 7, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (33, 137, 3, 4, 7, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (34, 137, 3, 4, 7, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (35, 137, 3, 4, 7, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (36, 137, 4, 5, 7, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (37, 137, 4, 5, 7, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (38, 137, 4, 5, 7, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (39, 137, 5, 7, 7, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (40, 137, 5, 7, 7, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (41, 137, 5, 7, 7, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (42, 137, 6, 8, 7, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (43, 137, 6, 8, 7, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (44, 137, 6, 8, 7, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (45, 137, 7, 9, 7, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (46, 137, 8, 10, 7, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (47, 137, 9, 11, 7, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (48, 137, 10, 12, 7, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (49, 138, 1, 1, 8, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (50, 138, 1, 1, 8, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (51, 138, 1, 1, 8, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (52, 138, 1, 1, 8, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (53, 138, 2, 2, 8, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (54, 138, 2, 2, 8, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (55, 138, 2, 2, 8, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (56, 138, 2, 2, 8, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (57, 138, 3, 4, 8, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (58, 138, 3, 4, 8, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (59, 138, 3, 4, 8, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (60, 138, 4, 5, 8, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (61, 138, 4, 5, 8, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (62, 138, 4, 5, 8, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (63, 138, 5, 7, 8, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (64, 138, 5, 7, 8, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (65, 138, 5, 7, 8, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (66, 138, 6, 8, 8, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (67, 138, 6, 8, 8, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (68, 138, 6, 8, 8, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (69, 138, 7, 9, 8, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (70, 138, 8, 10, 8, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (71, 138, 9, 11, 8, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (72, 138, 10, 12, 8, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (73, 139, 1, 1, 2, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (74, 139, 1, 1, 2, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (75, 139, 1, 1, 2, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (76, 139, 1, 1, 2, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (77, 139, 2, 2, 2, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (78, 139, 2, 2, 2, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (79, 139, 2, 2, 2, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (80, 139, 2, 2, 2, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (81, 139, 3, 4, 2, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (82, 139, 3, 4, 2, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (83, 139, 3, 4, 2, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (84, 139, 4, 5, 2, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (85, 139, 4, 5, 2, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (86, 139, 4, 5, 2, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (87, 139, 5, 7, 2, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (88, 139, 5, 7, 2, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (89, 139, 5, 7, 2, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (90, 139, 6, 8, 2, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (91, 139, 6, 8, 2, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (92, 139, 6, 8, 2, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (93, 139, 7, 9, 2, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (94, 139, 8, 10, 2, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (95, 139, 9, 11, 2, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (96, 139, 10, 12, 2, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (97, 140, 1, 1, 3, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (98, 140, 1, 1, 3, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (99, 140, 1, 1, 3, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (100, 140, 1, 1, 3, 12, 12, 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (101, 140, 2, 2, 3, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (102, 140, 2, 2, 3, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (103, 140, 2, 2, 3, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (104, 140, 2, 2, 3, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (105, 140, 3, 4, 3, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (106, 140, 3, 4, 3, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (107, 140, 3, 4, 3, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (108, 140, 4, 5, 3, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (109, 140, 4, 5, 3, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (110, 140, 4, 5, 3, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (111, 140, 5, 7, 3, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (112, 140, 5, 7, 3, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (113, 140, 5, 7, 3, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (114, 140, 6, 8, 3, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (115, 140, 6, 8, 3, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (116, 140, 6, 8, 3, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (117, 140, 7, 9, 3, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (118, 140, 8, 10, 3, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (119, 140, 9, 11, 3, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (120, 140, 10, 12, 3, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (121, 141, 1, 1, 4, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (122, 141, 1, 1, 4, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (123, 141, 1, 1, 4, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (124, 141, 1, 1, 4, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (125, 141, 2, 2, 4, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (126, 141, 2, 2, 4, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (127, 141, 2, 2, 4, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (128, 141, 2, 2, 4, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (129, 141, 3, 4, 4, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (130, 141, 3, 4, 4, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (131, 141, 3, 4, 4, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (132, 141, 4, 5, 4, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (133, 141, 4, 5, 4, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (134, 141, 4, 5, 4, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (135, 141, 5, 7, 4, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (136, 141, 5, 7, 4, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (137, 141, 5, 7, 4, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (138, 141, 6, 8, 4, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (139, 141, 6, 8, 4, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (140, 141, 6, 8, 4, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (141, 141, 7, 9, 4, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (142, 141, 8, 10, 4, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (143, 141, 9, 11, 4, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (144, 141, 10, 12, 4, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (145, 142, 1, 1, 5, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (146, 142, 1, 1, 5, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (147, 142, 1, 1, 5, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (148, 142, 1, 1, 5, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (149, 142, 2, 2, 5, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (150, 142, 2, 2, 5, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (151, 142, 2, 2, 5, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (152, 142, 2, 2, 5, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (153, 142, 3, 4, 5, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (154, 142, 3, 4, 5, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (155, 142, 3, 4, 5, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (156, 142, 4, 5, 5, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (157, 142, 4, 5, 5, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (158, 142, 4, 5, 5, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (159, 142, 5, 7, 5, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (160, 142, 5, 7, 5, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (161, 142, 5, 7, 5, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (162, 142, 6, 8, 5, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (163, 142, 6, 8, 5, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (164, 142, 6, 8, 5, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (165, 142, 7, 9, 5, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (166, 142, 8, 10, 5, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (167, 142, 9, 11, 5, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (168, 142, 10, 12, 5, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (169, 143, 1, 1, 6, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (170, 143, 1, 1, 6, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (171, 143, 1, 1, 6, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (172, 143, 1, 1, 6, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (173, 143, 2, 2, 6, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (174, 143, 2, 2, 6, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (175, 143, 2, 2, 6, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (176, 143, 2, 2, 6, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (177, 143, 3, 4, 6, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (178, 143, 3, 4, 6, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (179, 143, 3, 4, 6, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (180, 143, 4, 5, 6, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (181, 143, 4, 5, 6, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (182, 143, 4, 5, 6, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (183, 143, 5, 7, 6, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (184, 143, 5, 7, 6, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (185, 143, 5, 7, 6, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (186, 143, 6, 8, 6, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (187, 143, 6, 8, 6, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (188, 143, 6, 8, 6, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (189, 143, 7, 9, 6, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (190, 143, 8, 10, 6, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (191, 143, 9, 11, 6, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (192, 143, 10, 12, 6, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (193, 144, 1, 1, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (194, 144, 1, 1, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (195, 144, 1, 1, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (196, 144, 1, 1, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (197, 144, 2, 2, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (198, 144, 2, 2, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (199, 144, 2, 2, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (200, 144, 2, 2, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (201, 144, 3, 4, NULL, 3, 3, 3)
GO
print 'Processed 200 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (202, 144, 3, 4, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (203, 144, 3, 4, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (204, 144, 4, 5, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (205, 144, 4, 5, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (206, 144, 4, 5, NULL, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (207, 144, 5, 7, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (208, 144, 5, 7, NULL, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (209, 144, 5, 7, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (210, 144, 6, 8, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (211, 144, 6, 8, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (212, 144, 6, 8, NULL, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (213, 144, 7, 9, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (214, 144, 8, 10, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (215, 144, 9, 11, NULL, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (216, 144, 10, 12, NULL, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (217, 145, 1, 1, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (218, 145, 1, 1, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (219, 145, 1, 1, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (220, 145, 1, 1, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (221, 145, 2, 2, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (222, 145, 2, 2, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (223, 145, 2, 2, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (224, 145, 2, 2, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (225, 145, 3, 4, NULL, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (226, 145, 3, 4, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (227, 145, 3, 4, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (228, 145, 4, 5, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (229, 145, 4, 5, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (230, 145, 4, 5, NULL, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (231, 145, 5, 7, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (232, 145, 5, 7, NULL, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (233, 145, 5, 7, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (234, 145, 6, 8, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (235, 145, 6, 8, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (236, 145, 6, 8, NULL, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (237, 145, 7, 9, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (238, 145, 8, 10, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (239, 145, 9, 11, NULL, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (240, 145, 10, 12, NULL, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (241, 146, 1, 1, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (242, 146, 1, 1, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (243, 146, 1, 1, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (244, 146, 1, 1, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (245, 146, 2, 2, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (246, 146, 2, 2, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (247, 146, 2, 2, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (248, 146, 2, 2, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (249, 146, 3, 4, NULL, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (250, 146, 3, 4, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (251, 146, 3, 4, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (252, 146, 4, 5, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (253, 146, 4, 5, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (254, 146, 4, 5, NULL, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (255, 146, 5, 7, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (256, 146, 5, 7, NULL, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (257, 146, 5, 7, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (258, 146, 6, 8, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (259, 146, 6, 8, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (260, 146, 6, 8, NULL, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (261, 146, 7, 9, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (262, 146, 8, 10, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (263, 146, 9, 11, NULL, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (264, 146, 10, 12, NULL, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (265, 147, 1, 1, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (266, 147, 1, 1, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (267, 147, 1, 1, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (268, 147, 1, 1, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (269, 147, 2, 2, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (270, 147, 2, 2, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (271, 147, 2, 2, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (272, 147, 2, 2, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (273, 147, 3, 4, NULL, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (274, 147, 3, 4, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (275, 147, 3, 4, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (276, 147, 4, 5, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (277, 147, 4, 5, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (278, 147, 4, 5, NULL, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (279, 147, 5, 7, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (280, 147, 5, 7, NULL, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (281, 147, 5, 7, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (282, 147, 6, 8, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (283, 147, 6, 8, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (284, 147, 6, 8, NULL, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (285, 147, 7, 9, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (286, 147, 8, 10, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (287, 147, 9, 11, NULL, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (288, 147, 10, 12, NULL, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (289, 148, 1, 1, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (290, 148, 1, 1, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (291, 148, 1, 1, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (292, 148, 1, 1, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (293, 148, 2, 2, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (294, 148, 2, 2, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (295, 148, 2, 2, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (296, 148, 2, 2, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (297, 148, 3, 4, NULL, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (298, 148, 3, 4, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (299, 148, 3, 4, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (300, 148, 4, 5, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (301, 148, 4, 5, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (302, 148, 4, 5, NULL, 2, 2, 4)
GO
print 'Processed 300 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (303, 148, 5, 7, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (304, 148, 5, 7, NULL, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (305, 148, 5, 7, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (306, 148, 6, 8, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (307, 148, 6, 8, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (308, 148, 6, 8, NULL, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (309, 148, 7, 9, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (310, 148, 8, 10, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (311, 148, 9, 11, NULL, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (312, 148, 10, 12, NULL, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (313, 149, 1, 1, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (314, 149, 1, 1, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (315, 149, 1, 1, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (316, 149, 1, 1, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (317, 149, 2, 2, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (318, 149, 2, 2, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (319, 149, 2, 2, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (320, 149, 2, 2, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (321, 149, 3, 4, NULL, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (322, 149, 3, 4, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (323, 149, 3, 4, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (324, 149, 4, 5, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (325, 149, 4, 5, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (326, 149, 4, 5, NULL, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (327, 149, 5, 7, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (328, 149, 5, 7, NULL, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (329, 149, 5, 7, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (330, 149, 6, 8, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (331, 149, 6, 8, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (332, 149, 6, 8, NULL, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (333, 149, 7, 9, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (334, 149, 8, 10, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (335, 149, 9, 11, NULL, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (336, 149, 10, 12, NULL, 6, 6, 5)
SET IDENTITY_INSERT [dbo].[ChiTietTKB] OFF
/****** Object:  ForeignKey [FK_ChiTietTKB_GiaoVien]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_GiaoVien]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_MonHoc]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_MonHoc]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_Phong]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_Phong]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_ThoiKhoaBieu]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu] FOREIGN KEY([MaTKB])
REFERENCES [dbo].[ThoiKhoaBieu] ([MaTKB])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu]
GO
/****** Object:  ForeignKey [FK_GiaoVien_MonHoc]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_MonHoc]
GO
/****** Object:  ForeignKey [FK_MonHoc_LoaiMonHoc]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_LoaiMonHoc] FOREIGN KEY([MaLoaiMonHoc])
REFERENCES [dbo].[LoaiMonHoc] ([MaLoaiMonHoc])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_LoaiMonHoc]
GO
/****** Object:  ForeignKey [FK_Phong_LoaiPhong]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_LoaiTaiKhoan]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  ForeignKey [FK_ThoiKhoaBieu_Lop]    Script Date: 12/26/2012 15:45:37 ******/
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_Lop]
GO
