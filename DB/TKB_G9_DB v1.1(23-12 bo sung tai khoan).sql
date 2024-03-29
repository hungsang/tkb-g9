USE [TKB_G9]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lop]') AND type in (N'U'))
BEGIN
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
END
GO
SET IDENTITY_INSERT [dbo].[Lop] ON
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (1, N'10A1', N'10', N'Chiều', 45, N'Lớp tuyển')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (2, N'10A2', N'10', N'Chiều', 60, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (3, N'10A3', N'10', N'Chiều', 60, N'Lớp thường')
SET IDENTITY_INSERT [dbo].[Lop] OFF
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiTaiKhoan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (1, N'Admin')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (2, N'Giáo vụ')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (3, N'Giáo viên')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (4, N'Học sinh')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiPhong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiPhong] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LoaiMonHoc]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiMonHoc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiMonHoc](
	[MaLoaiMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiMonHoc] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiMonHoc] PRIMARY KEY CLUSTERED 
(
	[MaLoaiMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThoiKhoaBieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[MaTKB] [int] IDENTITY(1,1) NOT NULL,
	[MaLop] [int] NULL,
	[NamHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThoiKhoaBieu] PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (1, N'admin', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
/****** Object:  Table [dbo].[Phong]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phong]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MonHoc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenMonHoc] [nvarchar](200) NULL,
	[MoTa] [nvarchar](1000) NULL,
	[MaLoaiMonHoc] [int] NULL,
	[MonChinh] [int] NULL,
	[HeSoMonHoc] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GiaoVien](
	[MaGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[TenGiaoVien] [nvarchar](200) NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MaMonHoc] [int] NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ChiTietTKB]    Script Date: 12/23/2012 10:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_GiaoVien]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_GiaoVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_GiaoVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_GiaoVien]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_MonHoc]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_MonHoc]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_MonHoc]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_MonHoc]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_Phong]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_Phong]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_Phong]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_Phong]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_ThoiKhoaBieu]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_ThoiKhoaBieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu] FOREIGN KEY([MaTKB])
REFERENCES [dbo].[ThoiKhoaBieu] ([MaTKB])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietTKB_ThoiKhoaBieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietTKB]'))
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu]
GO
/****** Object:  ForeignKey [FK_GiaoVien_MonHoc]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GiaoVien_MonHoc]') AND parent_object_id = OBJECT_ID(N'[dbo].[GiaoVien]'))
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GiaoVien_MonHoc]') AND parent_object_id = OBJECT_ID(N'[dbo].[GiaoVien]'))
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_MonHoc]
GO
/****** Object:  ForeignKey [FK_MonHoc_LoaiMonHoc]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MonHoc_LoaiMonHoc]') AND parent_object_id = OBJECT_ID(N'[dbo].[MonHoc]'))
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_LoaiMonHoc] FOREIGN KEY([MaLoaiMonHoc])
REFERENCES [dbo].[LoaiMonHoc] ([MaLoaiMonHoc])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MonHoc_LoaiMonHoc]') AND parent_object_id = OBJECT_ID(N'[dbo].[MonHoc]'))
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_LoaiMonHoc]
GO
/****** Object:  ForeignKey [FK_Phong_LoaiPhong]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phong_LoaiPhong]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phong]'))
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phong_LoaiPhong]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phong]'))
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_LoaiTaiKhoan]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TaiKhoan_LoaiTaiKhoan]') AND parent_object_id = OBJECT_ID(N'[dbo].[TaiKhoan]'))
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TaiKhoan_LoaiTaiKhoan]') AND parent_object_id = OBJECT_ID(N'[dbo].[TaiKhoan]'))
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  ForeignKey [FK_ThoiKhoaBieu_Lop]    Script Date: 12/23/2012 10:36:43 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThoiKhoaBieu_Lop]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThoiKhoaBieu]'))
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThoiKhoaBieu_Lop]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThoiKhoaBieu]'))
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_Lop]
GO
