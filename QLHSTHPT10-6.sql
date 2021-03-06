USE [QuanLyHSGVTHPT]
GO
/****** Object:  Table [dbo].[ChuNhiem]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuNhiem](
	[MaGV] [varchar](9) NOT NULL,
	[MaLop] [varchar](9) NOT NULL,
	[NamHoc] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diem](
	[MaHS] [varchar](9) NOT NULL,
	[MaMH] [varchar](9) NOT NULL,
	[DiemMieng] [float] NULL,
	[Diem15p] [float] NULL,
	[Diem1h] [float] NULL,
	[DiemHK] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [varchar](9) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[MaMon] [varchar](9) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Sdt] [varchar](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [varchar](9) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[GioiTinh] [bit] NULL,
	[Sdt] [varchar](15) NULL,
	[TenPhuHuynh] [nvarchar](100) NOT NULL,
	[SDTPhuHuynh] [varchar](12) NULL,
	[MaLop] [varchar](9) NULL,
 CONSTRAINT [PK_MaHS] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogUser]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogUser](
	[TaiKhoan] [varchar](50) NOT NULL,
	[TimeLogin] [datetime] NULL,
	[ThaoTac] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[Malop] [varchar](9) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[NiemKhoa] [varchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[Malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [varchar](9) NOT NULL,
	[TenMon] [nvarchar](100) NULL,
	[Khoi] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongHoc]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongHoc](
	[MaPhong] [varchar](9) NOT NULL,
	[SoPhong] [nvarchar](20) NULL,
	[SoChoToiDa] [int] NULL,
 CONSTRAINT [PK_PhongHoc] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongLop]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongLop](
	[ID] [varchar](9) NOT NULL,
	[MaPhong] [varchar](9) NOT NULL,
	[MaLop] [varchar](9) NOT NULL,
	[KipHoc] [nvarchar](20) NULL,
	[HocKyNamHoc] [nvarchar](20) NULL,
 CONSTRAINT [PK__PhongLop__0304D37C1D84DE22] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH1', 8, 8, 8, 8.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH10', 5, 6, 7, 7.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH11', 8, 8, 7, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH12', 8, 6, 9, 5.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH13', 9, 9, 7, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH2', 9, 7, 7, 5.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH3', 6, 8, 5, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH4', 9, 5, 7, 9.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH5', 6, 5, 10, 7.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH6', 9, 6, 10, 5.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH7', 8, 9, 6, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH8', 10, 7, 10, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS1', N'MH9', 9, 9, 6, 7.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH1', 6, 9, 9, 8.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH10', 5, 6, 6, 7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH11', 9, 9, 10, 8.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH12', 9, 6, 9, 5.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH13', 9, 6, 9, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH2', 8, 9, 6, 6.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH3', 8, 8, 5, 7.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH4', 8, 7, 7, 8.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH5', 9, 6, 6, 6.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH6', 8, 7, 10, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH7', 7, 10, 5, 7.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH8', 7, 10, 7, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS10', N'MH9', 10, 8, 9, 6.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH1', 8, 6, 8, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH10', 9, 6, 5, 9.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH11', 5, 10, 6, 5.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH12', 9, 9, 9, 7.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH13', 7, 6, 6, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH2', 7, 9, 6, 7.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH3', 6, 8, 7, 5.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH4', 6, 8, 7, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH5', 8, 10, 9, 8.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH6', 8, 8, 10, 7.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH7', 9, 6, 8, 7.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH8', 6, 5, 8, 8.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS101', N'MH9', 9, 6, 6, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH1', 8, 9, 9, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH10', 8, 6, 8, 7.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH11', 8, 9, 6, 8.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH12', 7, 10, 6, 9.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH13', 7, 7, 7, 6.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH2', 9, 8, 7, 9.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH3', 5, 7, 9, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH4', 8, 6, 9, 7.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH5', 8, 9, 6, 5.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH6', 8, 9, 5, 7.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH7', 7, 6, 10, 6.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH8', 8, 5, 8, 9.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS102', N'MH9', 10, 5, 9, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH1', 9, 8, 6, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH10', 10, 7, 10, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH11', 10, 7, 10, 9.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH12', 9, 5, 10, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH13', 6, 9, 8, 8.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH2', 6, 9, 5, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH3', 7, 9, 10, 8.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH4', 10, 6, 7, 9.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH5', 10, 9, 6, 9.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH6', 7, 7, 8, 8.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH7', 10, 9, 8, 9.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH8', 7, 9, 9, 8.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS103', N'MH9', 8, 7, 9, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH1', 10, 5, 10, 9.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH10', 9, 6, 6, 7.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH11', 6, 6, 8, 6.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH12', 8, 5, 5, 8.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH13', 6, 6, 9, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH2', 5, 7, 5, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH3', 7, 7, 5, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH4', 8, 6, 8, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH5', 5, 7, 7, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH6', 10, 7, 9, 8.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH7', 8, 6, 6, 8.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH8', 6, 8, 8, 5.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS104', N'MH9', 7, 8, 8, 8.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH1', 7, 9, 8, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH10', 7, 5, 9, 7.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH11', 10, 6, 9, 9.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH12', 5, 7, 5, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH13', 8, 9, 9, 8.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH2', 8, 7, 8, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH3', 8, 5, 6, 7.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH4', 8, 8, 6, 5.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH5', 8, 6, 7, 9.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH6', 7, 9, 7, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH7', 6, 10, 8, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH8', 6, 7, 8, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS105', N'MH9', 8, 8, 6, 7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH1', 10, 10, 8, 8.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH10', 8, 6, 7, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH11', 9, 10, 7, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH12', 8, 7, 9, 8.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH13', 5, 9, 5, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH2', 8, 10, 7, 6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH3', 9, 7, 7, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH4', 8, 7, 5, 6.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH5', 9, 7, 7, 8.9)
GO
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH6', 6, 10, 8, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH7', 8, 7, 6, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH8', 9, 8, 5, 5.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS106', N'MH9', 8, 7, 10, 7.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH1', 6, 10, 6, 8.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH10', 7, 10, 6, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH11', 7, 8, 9, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH12', 10, 7, 7, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH13', 8, 8, 6, 7.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH2', 8, 5, 6, 9.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH3', 5, 5, 9, 8.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH4', 6, 7, 7, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH5', 6, 9, 7, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH6', 8, 7, 9, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH7', 5, 10, 9, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH8', 10, 5, 8, 9.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS107', N'MH9', 9, 9, 5, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH1', 5, 9, 8, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH10', 7, 6, 8, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH11', 6, 8, 7, 6.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH12', 8, 10, 7, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH13', 8, 8, 6, 9.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH2', 9, 6, 7, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH3', 9, 8, 9, 7.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH4', 10, 6, 6, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH5', 5, 9, 7, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH6', 9, 8, 9, 9.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH7', 9, 6, 9, 6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH8', 7, 6, 7, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS108', N'MH9', 8, 6, 10, 8.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH1', 9, 6, 7, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH10', 9, 10, 7, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH11', 8, 7, 10, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH12', 6, 10, 9, 9.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH13', 6, 7, 6, 7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH2', 6, 9, 8, 5.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH3', 9, 9, 7, 9.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH4', 8, 6, 7, 6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH5', 9, 7, 9, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH6', 5, 5, 8, 5.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH7', 8, 5, 10, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH8', 7, 6, 8, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS109', N'MH9', 9, 8, 8, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH1', 8, 8, 5, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH10', 9, 8, 6, 7.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH11', 8, 5, 8, 7.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH12', 6, 6, 9, 6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH13', 9, 7, 7, 7.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH2', 7, 10, 8, 5.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH3', 9, 7, 9, 8.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH4', 5, 9, 10, 8.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH5', 5, 9, 9, 8.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH6', 5, 8, 7, 8.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH7', 7, 7, 9, 8.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH8', 8, 10, 6, 5.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS110', N'MH9', 9, 9, 8, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH1', 7, 7, 7, 6.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH10', 10, 6, 10, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH11', 8, 10, 6, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH12', 9, 8, 7, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH13', 10, 6, 10, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH2', 8, 8, 8, 9.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH3', 6, 9, 6, 7.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH4', 5, 8, 9, 9.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH5', 8, 8, 9, 7.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH6', 10, 7, 8, 9.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH7', 8, 9, 7, 8.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH8', 7, 10, 9, 5.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS111', N'MH9', 5, 8, 6, 5.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH1', 5, 8, 7, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH10', 6, 6, 8, 7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH11', 9, 7, 8, 5.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH12', 7, 7, 7, 5.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH13', 9, 8, 8, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH2', 8, 8, 10, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH21', 8, 8, 9, 7.46)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH22', 6, 8, 8, 7.04)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH23', 8, 10, 10, 6.69)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH24', 9, 9, 8, 6.61)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH25', 6, 7, 10, 8.39)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH26', 7, 9, 8, 7.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH27', 8, 6, 6, 7.97)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH28', 8, 7, 7, 6.88)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH29', 10, 9, 7, 7.43)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH3', 5, 8, 9, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH30', 9, 8, 7, 9.34)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH31', 7, 7, 7, 6.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH32', 7, 10, 7, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH33', 9, 10, 10, 6.32)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH34', 8, 9, 8, 7.03)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH35', 9, 7, 6, 6.47)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH36', 9, 7, 6, 6.73)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH37', 7, 8, 9, 9.66)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH38', 7, 7, 10, 7.91)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH39', 7, 8, 9, 6.45)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH4', 7, 6, 8, 5.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH5', 9, 7, 9, 7.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH6', 9, 7, 8, 7.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH7', 10, 7, 5, 6.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH8', 7, 9, 6, 9.1)
GO
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS112', N'MH9', 6, 8, 8, 7.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH1', 7, 7, 9, 5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH10', 8, 9, 8, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH11', 10, 8, 10, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH12', 10, 7, 8, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH13', 8, 8, 10, 6.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH2', 5, 7, 7, 9.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH3', 8, 5, 9, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH4', 10, 10, 9, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH5', 5, 8, 9, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH6', 7, 6, 9, 9.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH7', 8, 8, 8, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH8', 6, 8, 8, 5.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS113', N'MH9', 7, 7, 9, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH1', 7, 9, 9, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH10', 8, 9, 9, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH11', 10, 9, 8, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH12', 6, 6, 8, 7.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH13', 5, 7, 9, 9.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH2', 9, 9, 6, 6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH3', 10, 8, 7, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH4', 6, 6, 5, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH5', 8, 9, 7, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH6', 6, 5, 9, 7.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH7', 7, 6, 10, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH8', 6, 6, 8, 8.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS114', N'MH9', 7, 8, 10, 5.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH1', 7, 7, 5, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH10', 6, 7, 10, 9.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH11', 8, 6, 9, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH12', 6, 6, 6, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH13', 7, 7, 9, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH2', 6, 6, 8, 7.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH3', 5, 6, 5, 7.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH4', 7, 8, 7, 7.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH5', 6, 5, 6, 9.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH6', 8, 7, 10, 8.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH7', 7, 7, 7, 5.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH8', 9, 8, 5, 8.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS115', N'MH9', 8, 9, 8, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH1', 8, 9, 8, 7.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH10', 9, 6, 7, 9.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH11', 6, 8, 7, 6.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH12', 7, 9, 9, 7.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH13', 8, 10, 10, 5.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH2', 8, 8, 5, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH3', 8, 8, 6, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH4', 7, 7, 6, 6.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH5', 10, 5, 6, 8.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH6', 8, 10, 8, 9.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH7', 5, 10, 10, 9.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH8', 7, 6, 8, 8.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS116', N'MH9', 7, 9, 10, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH1', 7, 6, 7, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH10', 8, 7, 7, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH11', 5, 7, 10, 8.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH12', 7, 8, 6, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH13', 8, 8, 7, 8.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH2', 7, 8, 8, 10)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH3', 8, 8, 7, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH4', 10, 8, 8, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH5', 8, 10, 8, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH6', 9, 8, 5, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH7', 6, 5, 9, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH8', 9, 8, 6, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS117', N'MH9', 7, 7, 7, 7.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH1', 7, 7, 8, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH10', 6, 7, 8, 7.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH11', 5, 7, 5, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH12', 7, 9, 9, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH13', 8, 7, 10, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH2', 7, 5, 8, 8.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH3', 8, 8, 6, 8.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH4', 5, 9, 6, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH5', 9, 10, 5, 9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH6', 9, 6, 10, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH7', 6, 8, 6, 8.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH8', 6, 5, 10, 6.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS118', N'MH9', 5, 5, 6, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH1', 6, 10, 9, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH10', 9, 9, 6, 7.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH11', 9, 7, 9, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH12', 7, 6, 5, 8.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH13', 9, 9, 6, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH2', 5, 7, 5, 6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH3', 8, 8, 10, 9.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH4', 8, 7, 7, 9.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH5', 9, 10, 5, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH6', 9, 10, 8, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH7', 7, 6, 10, 9.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH8', 8, 8, 6, 7.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS119', N'MH9', 5, 5, 6, 5.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH1', 10, 9, 9, 7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH10', 6, 8, 8, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH11', 8, 9, 6, 5.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH12', 5, 6, 6, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH13', 5, 6, 9, 6.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH2', 10, 7, 8, 9.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH3', 10, 9, 7, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH4', 9, 8, 8, 6.5)
GO
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH5', 9, 10, 10, 7.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH6', 6, 9, 10, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH7', 6, 10, 6, 7.3)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH8', 7, 6, 8, 6.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS12', N'MH9', 7, 10, 10, 7.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH1', 7, 5, 7, 7.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH10', 10, 9, 6, 8.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH11', 9, 5, 5, 6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH12', 7, 7, 5, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH13', 9, 8, 7, 7.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH2', 5, 8, 9, 5.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH3', 8, 7, 9, 5.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH4', 10, 9, 7, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH5', 5, 9, 7, 6.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH6', 5, 8, 7, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH7', 8, 9, 9, 5.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH8', 8, 8, 6, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS120', N'MH9', 7, 9, 7, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH1', 6, 8, 9, 7.79)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH10', 8, 9, 9, 7.12)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH11', 8, 8, 10, 7.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH12', 9, 7, 7, 6.54)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH13', 10, 8, 7, 6.52)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH2', 9, 8, 10, 8.99)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH21', 6, 9, 8, 8.33)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH22', 6, 8, 7, 8.72)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH23', 7, 7, 8, 6.04)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH24', 7, 9, 10, 6.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH25', 8, 8, 9, 7.02)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH26', 8, 8, 9, 7.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH27', 6, 7, 7, 6.02)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH28', 9, 6, 6, 6.96)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH29', 6, 8, 7, 9.19)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH3', 8, 10, 7, 6.88)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH30', 6, 9, 7, 9.88)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH31', 8, 6, 10, 9.02)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH32', 7, 9, 7, 9.13)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH33', 7, 7, 8, 6.37)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH34', 10, 9, 8, 7.43)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH35', 8, 7, 6, 9.92)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH36', 9, 8, 6, 8.76)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH37', 9, 9, 8, 7.44)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH38', 9, 8, 8, 6.06)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH39', 10, 9, 7, 8.06)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH4', 8, 6, 9, 7.68)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH5', 7, 9, 6, 8.27)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH6', 9, 9, 9, 9.55)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH7', 6, 7, 6, 6.02)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH8', 9, 10, 9, 7.72)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS22', N'MH9', 9, 9, 8, 9.93)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH1', 8, 10, 7, 7.35)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH10', 8, 8, 7, 6.35)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH11', 8, 9, 9, 6.16)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH12', 6, 8, 9, 9.86)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH13', 9, 10, 7, 9.66)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH2', 9, 7, 8, 7.56)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH21', 7, 7, 8, 8.02)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH22', 8, 9, 8, 9.72)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH23', 7, 8, 8, 6.14)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH24', 8, 7, 9, 8.51)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH25', 10, 7, 7, 7.28)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH26', 8, 7, 7, 6.49)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH27', 7, 10, 8, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH28', 7, 9, 7, 6.95)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH29', 10, 6, 7, 8.78)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH3', 10, 9, 8, 7.59)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH30', 9, 6, 9, 6.28)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH31', 9, 8, 9, 7.68)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH32', 9, 8, 7, 8.54)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH33', 8, 9, 7, 9.08)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH34', 9, 7, 8, 8.11)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH35', 8, 6, 7, 8.58)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH36', 8, 9, 7, 6.53)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH37', 8, 7, 9, 6.22)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH38', 7, 9, 6, 6.83)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH39', 7, 8, 6, 8.43)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH4', 7, 10, 10, 6.45)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH5', 8, 8, 9, 9.67)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH6', 8, 8, 8, 9.33)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH7', 7, 7, 8, 9.32)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH8', 10, 7, 9, 8.51)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS31', N'MH9', 7, 7, 10, 8.75)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH1', 8, 9, 6, 8.76)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH10', 6, 7, 9, 9.94)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH11', 9, 8, 7, 6.49)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH12', 9, 9, 8, 6.47)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH13', 10, 9, 7, 7.21)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH2', 9, 7, 7, 9.47)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH3', 9, 7, 9, 8.08)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH4', 6, 7, 9, 9.44)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH5', 7, 9, 9, 6.99)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH6', 9, 7, 6, 6.55)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH7', 10, 8, 9, 8.26)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH8', 6, 6, 6, 6.27)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS32', N'MH9', 9, 8, 8, 7.99)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH1', 6, 8, 8, 7.45)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH10', 9, 8, 8, 6.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH11', 6, 6, 7, 6.96)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH12', 7, 6, 7, 7.85)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH13', 9, 6, 9, 9.84)
GO
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH2', 7, 8, 9, 8.27)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH3', 6, 9, 10, 9.02)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH4', 9, 7, 6, 7.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH5', 8, 6, 10, 6.72)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH6', 6, 8, 9, 9.93)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH7', 10, 7, 8, 6.38)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH8', 9, 6, 7, 9.78)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS41', N'MH9', 9, 8, 9, 9.51)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH1', 9, 8, 7, 7.26)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH10', 7, 6, 9, 6.91)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH11', 9, 10, 9, 8.41)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH12', 10, 7, 8, 8.18)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH13', 8, 6, 8, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH2', 8, 9, 7, 8.98)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH21', 9, 8, 10, 7.09)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH22', 9, 8, 7, 7.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH23', 9, 9, 8, 6.86)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH24', 7, 10, 7, 6.37)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH25', 9, 8, 7, 7.28)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH26', 9, 9, 7, 9.56)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH27', 8, 6, 7, 8.29)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH28', 6, 6, 7, 6.09)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH29', 10, 6, 6, 6.14)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH30', 9, 8, 7, 9.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH31', 7, 9, 10, 7.75)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH32', 10, 9, 8, 6.84)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH33', 7, 8, 7, 6.38)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH34', 8, 7, 7, 8.57)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH35', 8, 8, 6, 8.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH36', 7, 7, 9, 9.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH37', 7, 7, 8, 7.01)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH38', 9, 6, 7, 6.17)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH39', 9, 7, 10, 7.69)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH4', 9, 7, 6, 7.86)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH5', 7, 9, 9, 8.11)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH6', 9, 7, 10, 6.94)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH7', 9, 7, 8, 6.11)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH8', 7, 8, 7, 7.47)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS52', N'MH9', 9, 7, 10, 7.27)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH1', 9, 6, 7, 9.43)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH10', 7, 7, 8, 9.24)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH11', 9, 10, 7, 6.15)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH12', 8, 10, 8, 6.44)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH13', 10, 9, 8, 6.81)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH2', 8, 10, 7, 9.49)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH3', 8, 9, 7, 9.48)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH4', 7, 10, 8, 7.61)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH5', 9, 8, 9, 7.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH6', 8, 10, 7, 6.33)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH7', 10, 10, 7, 7.68)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH8', 7, 10, 8, 8.75)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS62', N'MH9', 8, 9, 7, 7.32)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH1', 7, 10, 10, 6.19)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH10', 7, 7, 8, 8.23)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH11', 7, 6, 10, 7.99)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH12', 8, 8, 8, 8.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH13', 10, 9, 6, 9.85)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH2', 7, 8, 6, 8.89)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH3', 7, 7, 7, 8.31)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH4', 8, 10, 9, 6.16)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH5', 8, 8, 7, 9.07)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH6', 9, 9, 10, 9.25)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH7', 7, 8, 7, 8.71)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH8', 8, 6, 9, 8.99)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS7', N'MH9', 8, 7, 6, 6.87)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS76', N'MH33', 8, 8, 8, 8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH1', 9, 9, 7, 8.16)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH10', 8, 7, 8, 6.67)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH11', 8, 7, 6, 7.89)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH12', 7, 8, 9, 9.03)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH13', 9, 9, 6, 8.89)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH2', 10, 6, 7, 6.76)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH21', 7, 9, 6, 9.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH22', 9, 7, 10, 7.16)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH23', 7, 10, 6, 9.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH24', 6, 6, 8, 6.95)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH25', 7, 7, 8, 7.21)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH26', 9, 6, 8, 8.28)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH27', 9, 7, 9, 9.19)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH28', 6, 9, 10, 6.03)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH29', 10, 7, 9, 6.82)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH3', 9, 8, 8, 7.8)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH30', 6, 10, 7, 6.22)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH31', 7, 10, 8, 8.18)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH32', 7, 9, 9, 8.73)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH33', 7, 9, 9, 6.88)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH34', 9, 7, 7, 6.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH35', 9, 6, 6, 7.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH36', 10, 10, 7, 9.96)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH37', 7, 9, 8, 8.79)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH38', 8, 7, 9, 7.29)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH39', 9, 8, 8, 8.99)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH4', 9, 7, 9, 9.91)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH5', 10, 8, 9, 9.62)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH6', 9, 9, 9, 9.21)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH7', 7, 7, 8, 9.77)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH8', 8, 9, 7, 7.83)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS82', N'MH9', 9, 7, 8, 6.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH1', 8, 6, 7, 8.57)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH10', 7, 9, 7, 6.46)
GO
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH11', 6, 9, 7, 7.14)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH12', 10, 8, 8, 8.54)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH13', 7, 10, 9, 7.05)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH2', 9, 7, 7, 8.11)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH3', 8, 7, 7, 6.93)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH4', 6, 6, 7, 8.29)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH5', 10, 7, 10, 9.59)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH6', 9, 10, 9, 9.14)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH7', 8, 9, 10, 7.79)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HS92', N'MH8', 8, 8, 7, 9.13)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH1', 7, 9, 6, 9.9)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH10', 6, 8, 7, 8.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH11', 9, 7, 9, 5.1)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH12', 7, 9, 9, 5.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH13', 6, 8, 9, 5.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH2', 8, 9, 5, 9.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH3', 6, 5, 7, 7.6)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH4', 5, 6, 7, 5.7)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH5', 8, 7, 10, 8.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH6', 7, 6, 8, 8.2)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH7', 8, 9, 6, 9.4)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH8', 9, 6, 6, 6.5)
INSERT [dbo].[Diem] ([MaHS], [MaMH], [DiemMieng], [Diem15p], [Diem1h], [DiemHK]) VALUES (N'HSDEL', N'MH9', 7, 10, 8, 7.5)
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV1', N'nguyễn Ngọc Thúy Anh', N'MH1', CAST(N'1997-08-18' AS Date), 1, N'1667234525', N'Hạ Long')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV10', N'Đoàn Thị Phương Lan', N'MH10', CAST(N'1983-05-07' AS Date), 1, N'964545219', N'Quảng Trị')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV11', N'Nguyễn Thị Thanh Nhi', N'MH11', CAST(N'1986-06-22' AS Date), 1, N'964545220', N'Bình Định')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV12', N'Nguyễn Thị Mỹ Hoa', N'MH12', CAST(N'1973-12-08' AS Date), 1, N'964545221', N'Quảng Trị')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV13', N'Nguyễn Trường An', N'MH13', CAST(N'1976-11-10' AS Date), 1, N'964545222', N'ĐăkNông')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV14', N'Trần Văn An', N'MH14', CAST(N'1976-11-10' AS Date), 1, N'964545223', N'Quảng Ngãi')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV15', N'Trịnh Thị Thùy An', N'MH15', CAST(N'1987-09-19' AS Date), 0, N'964545224', N'Quảng Bình')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV16', N'Nguyễn Đức Anh', N'MH16', CAST(N'1976-11-10' AS Date), 0, N'964545225', N'Đắk Lắk')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV17', N'Phạm Tuấn Anh', N'MH17', CAST(N'1982-07-04' AS Date), 0, N'964545226', N'Quảng Bình')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV18', N'Phạm Việt Anh', N'MH18', CAST(N'1981-06-05' AS Date), 0, N'964545227', N'Quảng Ngãi')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV19', N'Tạ Ngọc ánh', N'MH19', CAST(N'1987-01-11' AS Date), 0, N'964545228', N'Đăk Nông')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV2', N'Hoàng Ngọc Anh', N'MH2', CAST(N'1998-08-13' AS Date), 1, N'973642633', N'Hà Nam')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV20', N'Lưu Xuân Bách', N'MH20', CAST(N'1987-02-20' AS Date), 0, N'964545229', N'Thừa Thiên -Huế')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV21', N'Đào Công Bình', N'MH21', CAST(N'1988-10-01' AS Date), 0, N'964545230', N'Quảng Bình')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV22', N'Hoàng Phan Bình', N'MH22', CAST(N'1981-05-01' AS Date), 0, N'964545231', N'Nam Định')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV23', N'Trần Văn Châu', N'MH23', CAST(N'1988-06-07' AS Date), 0, N'964545232', N'Gia Lai')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV24', N'Vũ Văn Chiên', N'MH24', CAST(N'1988-06-07' AS Date), 0, N'964545233', N'Quảng Nam')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV25', N'Đoàn Văn Chinh', N'MH25', CAST(N'1985-10-04' AS Date), 0, N'964545234', N'Bình Định')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV26', N'Tạ Trung Chính ', N'MH26', CAST(N'1989-10-11' AS Date), 0, N'964545235', N'Quảng Bình')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV27', N'Trần Huy Chương', N'MH27', CAST(N'1988-06-07' AS Date), 0, N'964545236', N'Quảng Trị')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV28', N'Nguyễn Duy Cương', N'MH28', CAST(N'1985-10-04' AS Date), 0, N'964545237', N'Quảng Trị')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV29', N'Trần Văn Cương', N'MH29', CAST(N'1983-10-10' AS Date), 0, N'964545238', N'Quảng Ngãi')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV3', N'Nguyễn Tài Duyên', N'MH3', CAST(N'1997-02-04' AS Date), 1, N'964545212', N'Sơn Tây Nghĩa Hiệp')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV30', N'Bùi Mạnh Cường', N'MH30', CAST(N'1988-06-07' AS Date), 0, N'964545239', N'Đắk Lắk')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV31', N'Lê Trọng Cường', N'MH31', CAST(N'1983-11-07' AS Date), 0, N'964545240', N'Bình Định')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV32', N'Nguyễn Mạnh Cường', N'MH32', CAST(N'1988-06-07' AS Date), 0, N'964545241', N'Quảng Bình')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV33', N'Nguyễn Ngọc Cường', N'MH33', CAST(N'1981-05-01' AS Date), 0, N'964545242', N'Gia Lai')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV34', N'Nguyễn Viết Cường', N'MH34', NULL, 0, N'964545243', N'Đà Nẵng')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV35', N'Vũ Cao Cường', N'MH35', CAST(N'1983-11-05' AS Date), 0, N'964545244', N'Nghệ An')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV36', N'Cao Văn Dũng', N'MH36', CAST(N'1982-02-08' AS Date), 0, N'964545245', N'Gia Lai')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV37', N'Dương Quốc Dũng', N'MH37', CAST(N'1990-10-21' AS Date), 0, N'964545246', N'Quảng Bình')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV38', N'Nguyễn Quang Dũng', N'MH38', CAST(N'1975-06-12' AS Date), 0, N'964545247', N'Quảng Nam')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV39', N'Nguyễn Thế Dũng', N'MH39', CAST(N'1983-02-20' AS Date), 0, N'964545248', N'Bình Định')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV4', N'Lâm Mỹ Lệ', N'MH4', CAST(N'1982-09-05' AS Date), 1, N'964545213', N'Hà nội')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV5', N'Chu Thị Phương', N'MH5', CAST(N'1982-09-05' AS Date), 1, N'964545214', N' Hà Giang')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV6', N'Bùi Minh Tuệ', N'MH6', CAST(N'1982-09-05' AS Date), 1, N'964545215', N'Cao Bằng')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV7', N'Nguyễn Thị Thúy Hằng', N'MH7', CAST(N'1978-06-11' AS Date), 1, N'964545216', N'Lạng Sơn')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV8', N'Trần Lê Khánh Lộc', N'MH8', CAST(N'1979-05-06' AS Date), 1, N'964545217', N'Gia Lai')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [MaMon], [NgaySinh], [GioiTinh], [Sdt], [DiaChi]) VALUES (N'GV9', N'Ngô Lê Bảo Ngọc', N'MH9', CAST(N'1982-09-05' AS Date), 1, N'964545218', N'Đắk Lắk')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS1', N'Phùng Văn Sang', CAST(N'2017-12-07' AS Date), N'Hà Nội', 1, N'1667234123', N'nguyễn Ngọc Thúy Anh', N'973642513', N'ML1')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS10', N'Lê Mai Anh', CAST(N'1997-08-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Hoàng Ngọc Anh', N'973642514', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS101', N'Nguyễn Thanh Điền', CAST(N'1983-10-14' AS Date), N'Hà Nội', 1, N'1667234123', N'Phạm Đức Khánh', N'973642612', N'ML10')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS102', N'Nguyễn Ngọc Điển', CAST(N'1978-11-04' AS Date), N'Hà Nội', 1, N'1667234123', N'Hoàng Trung Kiên', N'973642613', N'ML11')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS103', N'Nguyễn Quốc Định', CAST(N'1984-10-27' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Trung Kiên', N'973642614', N'ML12')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS104', N'Đào Văn Đoan', CAST(N'1987-12-11' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Văn Kỳ', N'973642615', N'ML13')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS105', N'Trần Ngọc Đoàn', CAST(N'1983-01-10' AS Date), N'Hà Nội', 1, N'1667234123', N'Đào Văn Lân', N'973642616', N'ML14')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS106', N'Lê Minh Đông', CAST(N'1984-10-22' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thành Lê', N'973642617', N'ML15')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS107', N'Trần Xuân Nam', CAST(N'1986-06-12' AS Date), N'Hà Nội', 1, N'1667234123', N'Ngô Thị Liên', N'973642618', N'ML16')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS108', N'Trần Trung Đức', CAST(N'1987-01-29' AS Date), N'Hà Nội', 1, N'1667234123', N'Lê Thị Thùy Linh', N'973642619', N'ML17')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS109', N'Lại Đăng Giang', CAST(N'1972-03-28' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thùy Linh', N'973642620', N'ML18')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS110', N'Vũ Thế Trung Giáp', CAST(N'1985-02-05' AS Date), N'Hà Nội', 1, N'1667234123', N'Hoàng Quốc Long', N'973642621', N'ML19')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS111', N'Lương Thị Thanh Hà', CAST(N'1984-05-02' AS Date), N'Hà Nội', 1, N'1667234123', N'Ngô Thành Long', N'973642622', N'ML20')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS112', N'Nguyễn Hữu Hà', CAST(N'1982-01-09' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Việt Long', N'973642623', N'ML21')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS113', N'Bùi Văn Hải', CAST(N'1984-07-11' AS Date), N'Hà Nội', 1, N'1667234123', N'Trịnh Quang Long', N'973642624', N'ML22')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS114', N'Nguyễn Thanh Hải', CAST(N'1988-02-06' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Văn Luận', N'973642625', N'ML23')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS115', N'Phan Nguyên Hải', CAST(N'1990-05-28' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Trọng Luật', N'973642626', N'ML24')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS116', N'Tống Thị Hạnh', CAST(N'1984-01-01' AS Date), N'Hà Nội', 0, N'1667234123', N'Đào Văn Lưu', N'973642627', N'ML25')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS117', N'Trịnh Trung Hiếu', CAST(N'1988-01-14' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thị Ngọc Mai', N'973642628', N'ML26')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS118', N'Vũ Mạnh Hiếu', CAST(N'1984-02-02' AS Date), N'Hà Nội', 1, N'1667234123', N'Hy Đức Mạnh', N'973642629', N'ML27')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS119', N'Vũ Trọng Hiếu', CAST(N'1988-04-26' AS Date), N'Hà Nội', 1, N'1667234123', N'Lương Duy Mạnh', N'973642630', N'ML28')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS12', N'Lê Mai Anh', CAST(N'1997-08-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Tài Duyên', N'973642515', N'ML3')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS120', N'Đặng Thị Thu Hiền', CAST(N'1988-02-08' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Thế Mạnh', N'973642631', N'ML29')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS13', N'Lê Mai Anh', CAST(N'1997-01-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Lâm Mỹ Lệ', N'973642516', N'ML4')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS14', N'Nguyễn Duy Anh', CAST(N'1985-08-20' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Trường An', N'973642525', N'ML13')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS15', N'Phạm Thu Chi', CAST(N'1982-07-27' AS Date), N'Hà Nội', 0, N'1667234123', N'Trần Văn An', N'973642526', N'ML14')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS150', N'Đình Phúc', CAST(N'2018-03-19' AS Date), N'Hà Nội', 1, N'123123', N'Abc', N'123123', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS151', N'Đình Phúc', CAST(N'2018-03-19' AS Date), N'Hà Nội', 1, N'123123', N'Abc', N'123123', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS152', N'Đình Phúc', CAST(N'2018-03-19' AS Date), N'Hà Nội', 1, N'123123', N'Abc', N'123123', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS154', N'Đình Phúc', CAST(N'2018-03-19' AS Date), N'Hà Nội', 0, N'123123', N'Abc', N'123123', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS155', N'Ngô Đình Phúc', CAST(N'2018-03-19' AS Date), N'Hà Nội', 1, N'0973642632', N'Mẹ', N'0973642632', N'ML24')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS159', N'Nguyễn Thị Huyền Trang', CAST(N'1997-10-13' AS Date), N'Quóc Oai - Hà Nội', 1, N'0986102244', N'Nguyễn Thị Huyền Trang', N'0986102244', N'ML5')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS16', N'Nguyễn Tiến Anh', CAST(N'1989-12-14' AS Date), N'Hà Nội', 1, N'1667234123', N'Trịnh Thị Thùy An', N'973642527', N'ML15')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS17', N'Nguyễn Tuấn Anh', CAST(N'1990-08-05' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Đức Anh', N'973642528', N'ML16')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS18', N'Phạm Trần Quyền Anh', CAST(N'1976-11-17' AS Date), N'Hà Nội', 1, N'1667234123', N'Phạm Tuấn Anh', N'973642529', N'ML17')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS19', N'Khổng Ngọc Loan', CAST(N'1986-09-18' AS Date), N'Hà Nội', 0, N'1667234123', N'Phạm Việt Anh', N'973642530', N'ML18')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS2', N'Hoàng Quốc Huy', CAST(N'1997-08-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Chu Thị Phương', N'973642517', N'ML5')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS20', N'Nguyễn Đức Anh(1989)', CAST(N'1985-10-06' AS Date), N'Hà Nội', 1, N'1667234123', N'Tạ Ngọc ánh', N'973642531', N'ML19')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS21', N'Phạm Xuân Bảo', CAST(N'1990-04-12' AS Date), N'Hà Nội', 1, N'1667234123', N'Lưu Xuân Bách', N'973642532', N'ML20')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS22', N'Phùng Văn Bắc', CAST(N'1987-07-06' AS Date), N'Hà Nội', 1, N'1667234123', N'Đào Công Bình', N'973642533', N'ML21')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS23', N'Đặng Thị Thùy Biên', CAST(N'1985-05-06' AS Date), N'Hà Nội', 0, N'1667234123', N'Hoàng Phan Bình', N'973642534', N'ML22')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS24', N'Nguyễn Văn Biển', CAST(N'1986-07-06' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Văn Châu', N'973642535', N'ML23')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS25', N'Đinh Văn Binh', CAST(N'1990-04-04' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Văn Chiên', N'973642536', N'ML24')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS26', N'Bùi Hữu Bình', CAST(N'1989-10-17' AS Date), N'Hà Nội', 1, N'1667234123', N'Đoàn Văn Chinh', N'973642537', N'ML25')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS27', N'Đặng Trần Ngọc Châu', CAST(N'1985-08-20' AS Date), N'Hà Nội', 0, N'1667234123', N'Tạ Trung Chính', N'973642538', N'ML26')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS28', N'Khuất Đình Chiến', CAST(N'1988-09-20' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Huy Chương', N'973642539', N'ML27')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS29', N'Lê Đình Chinh', CAST(N'1990-10-08' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Duy Cương', N'973642540', N'ML28')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS3', N'Hoàng Quốc Huy', CAST(N'1997-08-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Bùi Minh Tuệ', N'973642518', N'ML6')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS30', N'Nguyễn Quốc Chưởng', CAST(N'1985-03-19' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Văn Cương', N'973642541', N'ML29')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS31', N'Vũ Chí Công', CAST(N'1987-12-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Bùi Mạnh Cường', N'973642542', N'ML30')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS32', N'Nguyễn Văn Cương', CAST(N'1993-09-14' AS Date), N'Hà Nội', 1, N'1667234123', N'Lê Trọng Cường', N'973642543', N'ML1')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS33', N'Lê Văn Cường', CAST(N'1987-10-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Mạnh Cường', N'973642544', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS34', N'Nguyễn Văn Cường', CAST(N'1987-02-03' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Ngọc Cường', N'973642545', N'ML3')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS35', N'Phùng Văn Cường', CAST(N'1990-12-23' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Viết Cường', N'973642546', N'ML4')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS36', N'Mai Văn Diệu', CAST(N'1988-10-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Cao Cường', N'973642547', N'ML5')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS37', N'Phạm Thị Thùy Dung', CAST(N'1984-12-10' AS Date), N'Hà Nội', 0, N'1667234123', N'Cao Văn Dũng', N'973642548', N'ML6')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS38', N'Nguyễn Đình Duy', CAST(N'1986-03-28' AS Date), N'Hà Nội', 1, N'1667234123', N'Dương Quốc Dũng', N'973642549', N'ML7')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS39', N'Phạm Lâm Duy', CAST(N'1989-10-20' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Quang Dũng', N'973642550', N'ML8')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS4', N'Nguyễn Huyền Trang', CAST(N'1997-02-12' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Thị Thúy Hằng', N'973642519', N'ML7')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS40', N'Dương Trí Dũng', CAST(N'1987-06-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thế Dũng', N'973642551', N'ML9')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS41', N'Phạm Thùy Dươngg', CAST(N'1984-06-03' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Trung Dũng', N'973642552', N'ML10')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS42', N'Nguyễn Văn Dũng', CAST(N'1987-12-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Văn Dũng', N'973642553', N'ML11')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS43', N'Trần Đình Dũng', CAST(N'1993-09-14' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Quang Dũng', N'973642554', N'ML12')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS44', N'Nguyễn Kiều Oanh', CAST(N'1987-10-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Quang Dũng', N'973642555', N'ML13')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS45', N'Trần Quế Anh', CAST(N'1987-02-03' AS Date), N'Hà Nội', 0, N'1667234123', N'Hà Đại Dương', N'973642556', N'ML14')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS46', N'Nguyễn Thanh Dương', CAST(N'1990-12-23' AS Date), N'Hà Nội', 1, N'1667234123', N'Lê Xuân Dương', N'973642557', N'ML15')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS47', N'Nguyễn Đình Đại', CAST(N'1988-10-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Văn Đáng', N'973642558', N'ML16')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS48', N'Nguyễn Thanh Thúy', CAST(N'1984-12-10' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Phú Đăng', N'973642559', N'ML17')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS49', N'Nông Thành Đạt', CAST(N'1982-08-25' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thanh Điền', N'973642560', N'ML18')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS5', N'Nguyễn Thị Phượng', CAST(N'1997-08-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Trần Lê Khánh Lộc', N'973642520', N'ML8')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS50', N'Phạm Trịnh Đạt', CAST(N'1988-07-22' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Ngọc Điển', N'973642561', N'ML19')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS51', N'Lê Thị Linh', CAST(N'1983-09-25' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Quốc Định', N'973642562', N'ML20')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS52', N'Lê Văn Điệp', CAST(N'1970-04-04' AS Date), N'Hà Nội', 1, N'1667234123', N'Đào Văn Đoan', N'973642563', N'ML21')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS53', N'Đỗ Công Định', CAST(N'1982-12-10' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Ngọc Đoàn', N'973642564', N'ML22')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS54', N'Trần Huy Định', CAST(N'1986-10-02' AS Date), N'Hà Nội', 1, N'1667234123', N'Lê Minh Đông', N'973642565', N'ML23')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS55', N'Hoàng Ngọc Anh', CAST(N'1985-12-05' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Xuân Nam', N'973642566', N'ML24')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS56', N'Nguyễn Tài Duyên', CAST(N'1988-01-11' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Trung Đức', N'973642567', N'ML25')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS57', N'Lâm Mỹ Lệ', CAST(N'1984-08-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Lại Đăng Giang', N'973642568', N'ML26')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS58', N'Chu Thị Phương', CAST(N'1985-08-02' AS Date), N'Hà Nội', 0, N'1667234123', N'Vũ Thế Trung Giáp', N'973642569', N'ML27')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS59', N'Bùi Minh Tuệ', CAST(N'1988-09-21' AS Date), N'Hà Nội', 1, N'1667234123', N'Lương Thị Thanh Hà', N'973642570', N'ML28')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS6', N'Bùi Thị Hà', CAST(N'1997-08-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Ngô Lê Bảo Ngọc', N'973642521', N'ML9')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS60', N'Nguyễn Thị Thúy Hằng', CAST(N'1982-11-04' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Hữu Hà', N'973642571', N'ML29')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS61', N'Trần Lê Khánh Lộc', CAST(N'1982-12-16' AS Date), N'Hà Nội', 1, N'1667234123', N'Bùi Văn Hải', N'973642572', N'ML30')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS62', N'Ngô Lê Bảo Ngọc', CAST(N'1985-02-09' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Thanh Hải', N'973642573', N'ML1')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS63', N'Đoàn Thị Phương Lan', CAST(N'1985-08-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Phan Nguyên Hải', N'973642574', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS64', N'Nguyễn Thị Thanh Nhi', CAST(N'1988-02-16' AS Date), N'Hà Nội', 0, N'1667234123', N'Tống Thị Hạnh', N'973642575', N'ML3')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS65', N'Nguyễn Thị Mỹ Hoa', CAST(N'1983-10-07' AS Date), N'Hà Nội', 0, N'1667234123', N'Trịnh Trung Hiếu', N'973642576', N'ML4')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS66', N'Nguyễn Trường An', CAST(N'1986-08-05' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Mạnh Hiếu', N'973642577', N'ML5')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS67', N'Trần Văn An', CAST(N'1975-05-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Trọng Hiếu', N'973642578', N'ML6')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS68', N'Trịnh Thị Thùy An', CAST(N'1987-06-25' AS Date), N'Hà Nội', 0, N'1667234123', N'Đặng Thị Thu Hiền', N'973642579', N'ML7')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS69', N'Nguyễn Đức Anh', CAST(N'1982-01-05' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Hà Hiệp', N'973642580', N'ML8')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS7', N'Ngô Đình Phúc', CAST(N'1997-08-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Đoàn Thị Phương Lan', N'973642522', N'ML10')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS70', N'Phạm Tuấn Anh', CAST(N'1977-02-25' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Đức Hoàn', N'973642581', N'ML9')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS71', N'Phạm Việt Anh', CAST(N'1979-10-31' AS Date), N'Hà Nội', 1, N'1667234123', N'Đôn Minh Hoàng', N'973642582', N'ML10')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS72', N'Tạ Ngọc ánh', CAST(N'1984-11-01' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Hoàng', N'973642583', N'ML11')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS73', N'Lưu Xuân Bách', CAST(N'1983-11-01' AS Date), N'Hà Nội', 1, N'1667234123', N'Phạm Hoàng', N'973642584', N'ML12')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS74', N'Đào Công Bình', CAST(N'1985-09-16' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Trọng Hoàng', N'973642585', N'ML13')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS75', N'Hoàng Phan Bình', CAST(N'1984-12-18' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Văn Hoàng', N'973642586', N'ML14')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS76', N'Trần Văn Châu', CAST(N'1989-11-27' AS Date), N'Hà Nội', 1, N'1667234123', N'Cao Văn Hòa', N'973642587', N'ML15')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS77', N'Vũ Văn Chiên', CAST(N'1985-08-22' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Hữu Hòa', N'973642588', N'ML16')
GO
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS78', N'Đoàn Văn Chinh', CAST(N'1989-02-17' AS Date), N'Hà Nội', 1, N'1667234123', N'Mai Văn Huy', N'973642589', N'ML17')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS79', N'Tạ Trung Chính', CAST(N'1986-01-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Quang Huy', N'973642590', N'ML18')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS8', N'Lê Ngọc Linh', CAST(N'1997-07-15' AS Date), N'Hà Nội', 0, N'1667234123', N'Nguyễn Thị Thanh Nhi', N'973642523', N'ML11')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS80', N'Trần Huy Chương', CAST(N'1988-09-18' AS Date), N'Hà Nội', 1, N'1667234123', N'Đinh Hoàng Hùng', N'973642591', N'ML19')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS81', N'Nguyễn Duy Cương', CAST(N'1986-11-05' AS Date), N'Hà Nội', 1, N'1667234123', N'Nghiêm Xuân Hùng', N'973642592', N'ML20')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS82', N'Trần Văn Cương', CAST(N'1981-03-26' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Lê Hùng', N'973642593', N'ML21')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS83', N'Bùi Mạnh Cường', CAST(N'1987-11-22' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Mạnh Hùng', N'973642594', N'ML22')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS84', N'Lê Trọng Cường', CAST(N'1989-10-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Như Hùng', N'973642595', N'ML23')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS85', N'Nguyễn Mạnh Cường', CAST(N'1989-08-17' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Văn Hùng', N'973642596', N'ML24')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS86', N'Nguyễn Ngọc Cường', CAST(N'1987-12-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Trịnh Lê Hùng', N'973642597', N'ML25')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS87', N'Nguyễn Viết Cường', CAST(N'1993-09-14' AS Date), N'Hà Nội', 1, N'1667234123', N'Bùi Quốc Hưng', N'973642598', N'ML26')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS88', N'Vũ Cao Cường', CAST(N'1987-10-08' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Văn Hưng', N'973642599', N'ML27')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS89', N'Cao Văn Dũng', CAST(N'1987-02-03' AS Date), N'Hà Nội', 1, N'1667234123', N'Phạm Hoàng Hưng', N'973642600', N'ML28')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS9', N'Hoàng Lâm Anh', CAST(N'1997-06-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thị Mỹ Hoa', N'973642524', N'ML12')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS90', N'Dương Quốc Dũng', CAST(N'1990-12-23' AS Date), N'Hà Nội', 1, N'1667234123', N'Phạm Thái Hưng', N'973642601', N'ML29')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS91', N'Nguyễn Quang Dũng', CAST(N'1988-10-15' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Nam Hưng', N'973642602', N'ML30')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS92', N'Nguyễn Thế Dũng', CAST(N'1984-12-10' AS Date), N'Hà Nội', 1, N'1667234123', N'Trịnh Quang Hưng', N'973642603', N'ML1')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS93', N'Nguyễn Trung Dũng', CAST(N'1983-08-04' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thị Thu Hương', N'973642604', N'ML2')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS94', N'Nguyễn Văn Dũng', CAST(N'1982-07-17' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Thị Thu Hương', N'973642605', N'ML3')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS95', N'Trần Quang Dũng', CAST(N'1984-08-29' AS Date), N'Hà Nội', 1, N'1667234123', N'Vũ Đình Hương', N'973642606', N'ML4')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS96', N'Trần Quang Dũng', CAST(N'1987-05-09' AS Date), N'Hà Nội', 1, N'1667234123', N'Lê Công ích', N'973642607', N'ML5')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS97', N'Hà Đại Dương', CAST(N'1987-04-09' AS Date), N'Hà Nội', 1, N'1667234123', N'Trần Văn Kế', N'973642608', N'ML6')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS98', N'Lê Xuân Dương', CAST(N'1987-08-26' AS Date), N'Hà Nội', 1, N'1667234123', N'Nguyễn Thị Hiền', N'973642609', N'ML7')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HS99', N'Vũ Văn Đáng', CAST(N'1990-02-19' AS Date), N'Hà Nội', 1, N'1667234123', N'Phạm Minh Kha', N'973642610', N'ML8')
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [Sdt], [TenPhuHuynh], [SDTPhuHuynh], [MaLop]) VALUES (N'HSDEL', N'Học Sinh Bị Xóa', NULL, NULL, NULL, NULL, N'Học Sinh Bị Xóa', NULL, NULL)
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML1', N'10A1', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML10', N'10A10', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML11', N'11A1', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML12', N'11A2', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML13', N'11A3', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML14', N'11A4', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML15', N'11A5', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML16', N'11A6', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML17', N'11A7', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML18', N'11A8', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML19', N'11A9', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML2', N'10A2', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML20', N'11A10', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML21', N'12A1', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML22', N'12A2', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML23', N'12A3', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML24', N'12A4', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML25', N'12A5', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML26', N'12A6', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML27', N'12A7', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML28', N'12A8', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML29', N'12A9', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML3', N'10A3', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML30', N'12A10', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML4', N'10A4', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML5', N'10A5', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML6', N'10A6', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML7', N'10A7', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML8', N'10A8', N'2017-018')
INSERT [dbo].[Lop] ([Malop], [TenLop], [NiemKhoa]) VALUES (N'ML9', N'10A9', N'2017-018')
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH1', N'Toán - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH10', N'Địa - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH11', N'Thể Dục - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH12', N'Giáo dục công dân - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH13', N'Công Nghệ - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH14', N'Toán - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH15', N'Tin Học - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH16', N'Giáo dục quốc phòng - an ninh - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH17', N'Sinh Học - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH18', N'Ngoại Ngữ - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH19', N'Vật Lý - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH2', N'Tin Học - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH20', N'Hóa - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH21', N'Văn - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH22', N'Sử - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH23', N'Địa - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH24', N'Thể Dục - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH25', N'Giáo dục công dân - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH26', N'Công Nghệ - 11', 11)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH27', N'Toán - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH28', N'Tin Học - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH29', N'Giáo dục quốc phòng - an ninh - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH3', N'Giáo dục quốc phòng - an ninh - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH30', N'Sinh Học - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH31', N'Ngoại Ngữ - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH32', N'Vật Lý - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH33', N'Hóa - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH34', N'Văn - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH35', N'Sử - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH36', N'Địa - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH37', N'Thể Dục - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH38', N'Giáo dục công dân - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH39', N'Công Nghệ - 12', 12)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH4', N'Sinh Học - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH5', N'Ngoại Ngữ - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH6', N'Vật Lý - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH7', N'Hóa - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH8', N'Văn - 10', 10)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [Khoi]) VALUES (N'MH9', N'Sử - 10', 10)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP1', N'103', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP10', N'112', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP11', N'113', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP12', N'114', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP13', N'115', 36)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP14', N'116', 38)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP15', N'117', 35)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP16', N'118', 36)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP17', N'119', 38)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP18', N'120', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP19', N'121', 38)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP2', N'104', 39)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP20', N'122', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP21', N'123', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP22', N'124', 39)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP23', N'125', 36)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP24', N'126', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP25', N'127', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP26', N'128', 38)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP27', N'129', 39)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP28', N'130', 39)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP29', N'131', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP3', N'105', 36)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP30', N'132', 38)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP4', N'106', 39)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP5', N'107', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP6', N'108', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP7', N'109', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP8', N'110', 37)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SoChoToiDa]) VALUES (N'MP9', N'111', 40)
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL1', N'MP1', N'ML1', N'1', N'2017-2018')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL11', N'MP19', N'ML26', N'1', N'2017-2036')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL12', N'MP2', N'ML10', N'1', N'2017-2019')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL13', N'MP20', N'ML27', N'1', N'2017-2037')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL14', N'MP21', N'ML28', N'1', N'2017-2038')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL15', N'MP22', N'ML29', N'1', N'2017-2018')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL17', N'MP24', N'ML30', N'1', N'2017-2041')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL18', N'MP25', N'ML4', N'1', N'2017-2042')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL19', N'MP26', N'ML5', N'1', N'2017-2043')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL2', N'MP10', N'ML18', N'1', N'2017-2027')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL20', N'MP27', N'ML6', N'1', N'2017-2044')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL21', N'MP28', N'ML7', N'1', N'2017-2045')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL22', N'MP29', N'ML8', N'1', N'2017-2046')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL23', N'MP3', N'ML11', N'1', N'2017-2020')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL24', N'MP30', N'ML9', N'1', N'2017-2047')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL25', N'MP4', N'ML12', N'1', N'2017-2021')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL26', N'MP5', N'ML13', N'1', N'2017-2022')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL27', N'MP6', N'ML14', N'1', N'2017-2023')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL28', N'MP7', N'ML15', N'1', N'2017-2024')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL29', N'MP8', N'ML16', N'1', N'2017-2025')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL3', N'MP11', N'ML19', N'1', N'2017-2028')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL30', N'MP9', N'ML17', N'1', N'2017-2026')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL4', N'MP12', N'ML19', N'1', N'2017-2029')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL5', N'MP13', N'ML20', N'1', N'2017-2030')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL6', N'MP14', N'ML21', N'1', N'2017-2031')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL7', N'MP15', N'ML22', N'1', N'2017-2032')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL8', N'MP15', N'ML23', N'1', N'2017-2033')
INSERT [dbo].[PhongLop] ([ID], [MaPhong], [MaLop], [KipHoc], [HocKyNamHoc]) VALUES (N'PL9', N'MP17', N'ML24', N'1', N'2017-2034')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau]) VALUES (N'adm', N'1')
ALTER TABLE [dbo].[LogUser] ADD  DEFAULT (getdate()) FOR [TimeLogin]
GO
ALTER TABLE [dbo].[ChuNhiem]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[ChuNhiem] CHECK CONSTRAINT [FK_GiaoVien]
GO
ALTER TABLE [dbo].[ChuNhiem]  WITH CHECK ADD  CONSTRAINT [FK_MaLop_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([Malop])
GO
ALTER TABLE [dbo].[ChuNhiem] CHECK CONSTRAINT [FK_MaLop_Lop]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangDay] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiangDay]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_MaLop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([Malop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_MaLop]
GO
ALTER TABLE [dbo].[LogUser]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[PhongLop]  WITH CHECK ADD  CONSTRAINT [FK__PhongLop__MaLop__20C1E124] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([Malop])
GO
ALTER TABLE [dbo].[PhongLop] CHECK CONSTRAINT [FK__PhongLop__MaLop__20C1E124]
GO
ALTER TABLE [dbo].[PhongLop]  WITH CHECK ADD  CONSTRAINT [FK__PhongLop__MaPhon__1FCDBCEB] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongHoc] ([MaPhong])
GO
ALTER TABLE [dbo].[PhongLop] CHECK CONSTRAINT [FK__PhongLop__MaPhon__1FCDBCEB]
GO
/****** Object:  StoredProcedure [dbo].[DelDiem]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DelDiem](
	@MaHS VARCHAR(9),
	@MaMH VARCHAR(9)
)
AS
BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.HocSinh WHERE MaHS=@MaHS
	DECLARE @CheckID2 INT
	SELECT  @CheckID2 = COUNT(*) FROM dbo.MonHoc WHERE MaMon=@MaMH
	IF (@CheckID=1 AND @CheckID2=1)
		BEGIN
			DELETE dbo.Diem WHERE MaHS=@MaHS AND MaMH =@MaMH
		END
	ELSE
		RAISERROR('Mã không tồn tại',12,1)

 END
GO
/****** Object:  StoredProcedure [dbo].[DelHS]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DelHS](@MaHS VARCHAR(9))
AS
 BEGIN
 DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.HocSinh WHERE MaHS=@MaHS
	IF @CheckID=1
		BEGIN
	    UPDATE dbo.Diem SET MaHS='HSDEL' WHERE MaHS=@MaHS
		DELETE dbo.HocSinh WHERE MaHS=@MaHS
		END
	ELSE
		RAISERROR('Mã không tồn tại',12,1)

 END
GO
/****** Object:  StoredProcedure [dbo].[DelRoomClass]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DelRoomClass](@ID VARCHAR(9))
AS
	BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.PhongLop WHERE ID=@ID
	IF @CheckID=1
		DELETE dbo.PhongLop WHERE ID=@ID
	ELSE
		RAISERROR('Mã không tồn tại',12,1)
	End
GO
/****** Object:  StoredProcedure [dbo].[EditDiem]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditDiem](
	@MaHS VARCHAR(9),
	@MaMH VARCHAR(9),
	@DiemMieng FLOAT ,
	@Diem15p FLOAT ,
	@Diem1h FLOAT ,
	@DiemHK FLOAT 
)
AS
BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.HocSinh WHERE MaHS=@MaHS
	DECLARE @CheckID2 INT
	SELECT  @CheckID2 = COUNT(*) FROM dbo.MonHoc WHERE MaMon=@MaMH
	IF (@CheckID=1 AND @CheckID2=1)
		BEGIN
			UPDATE Diem SET 
			          DiemMieng = @DiemMieng,
			          Diem15p = @Diem15p,
			          Diem1h = @Diem1h,
			          DiemHK= @DiemHK
			       WHERE MaHS=@MaHS AND MaMH=@MaMH
		END
	ELSE
		RAISERROR('Mã không tồn tại',12,1)

 END

GO
/****** Object:  StoredProcedure [dbo].[EditRoomClass]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditRoomClass]
(
	@ID VARCHAR(9) ,
	@MaPhong VARCHAR(9) ,
	@MaLop VARCHAR(9) ,
	@KipHoc NVARCHAR(20),
	@HocKyNamHoc NVARCHAR(20) 

)
as
	BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.PhongHoc WHERE MaPhong=@MaPhong
	DECLARE @CheckID2 INT
	SELECT  @CheckID2 = COUNT(*) FROM dbo.Lop WHERE Malop=@MaLop
	DECLARE @CheckID3 INT
	SELECT  @CheckID3 = COUNT(*) FROM dbo.PhongLop WHERE ID=@ID
	IF(@CheckID3=1 AND @CheckID=1 AND @CheckID2=1)
		UPDATE dbo.PhongLop SET MaPhong=@MaPhong,MaLop=@MaLop,KipHoc=@KipHoc,HocKyNamHoc=@HocKyNamHoc WHERE ID=@ID
	ELSE
		RAISERROR('Trùng mã hoặc mã không tồn tại',12,1)
END		
GO
/****** Object:  StoredProcedure [dbo].[GetDataRoomClass]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetDataRoomClass]
AS
	SELECT ID, PhongHoc.MaPhong,SoPhong,Lop.Malop,TenLop,KipHoc,HocKyNamHoc FROM dbo.PhongLop INNER JOIN dbo.Lop ON Lop.Malop = PhongLop.MaLop
								INNER JOIN dbo.PhongHoc ON PhongHoc.MaPhong = PhongLop.MaPhong
GO
/****** Object:  StoredProcedure [dbo].[GetPoint]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetPoint]
AS
	BEGIN
	SELECT Diem.MaHS,TenLop,HoTen,MaMH,TenMon,DiemMieng,Diem15p,Diem1h,DiemHK FROM dbo.Diem INNER JOIN dbo.HocSinh ON HocSinh.MaHS = Diem.MaHS
					    INNER JOIN dbo.MonHoc ON MonHoc.MaMon = Diem.MaMH
						INNER JOIN dbo.Lop ON Lop.Malop = HocSinh.MaLop 
						
	END
GO
/****** Object:  StoredProcedure [dbo].[GetPointByID]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetPointByID](@MaHS VARCHAR(10))
AS
	BEGIN
	SELECT Diem.MaHS,TenLop,HoTen,MaMH,TenMon,DiemMieng,Diem15p,Diem1h,DiemHK FROM dbo.Diem INNER JOIN dbo.HocSinh ON HocSinh.MaHS = Diem.MaHS
					    INNER JOIN dbo.MonHoc ON MonHoc.MaMon = Diem.MaMH
						INNER JOIN dbo.Lop ON Lop.Malop = HocSinh.MaLop 
						WHERE Diem.MaHS =@MaHS
	END

GO
/****** Object:  StoredProcedure [dbo].[InsDiem]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsDiem](
	@MaHS VARCHAR(9),
	@MaMH VARCHAR(9),
	@DiemMieng FLOAT ,
	@Diem15p FLOAT ,
	@Diem1h FLOAT ,
	@DiemHK FLOAT 
)
AS
BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.HocSinh WHERE MaHS=@MaHS
	DECLARE @CheckID2 INT
	SELECT  @CheckID2 = COUNT(*) FROM dbo.MonHoc WHERE MaMon=@MaMH
	IF (@CheckID=1 AND @CheckID2=1)
		BEGIN
			INSERT INTO dbo.Diem
			        ( MaHS ,
			          MaMH ,
			          DiemMieng ,
			          Diem15p ,
			          Diem1h ,
			          DiemHK
			        )
			VALUES  ( @MaHS , -- MaHS - varchar(9)
			          @MaMH , -- MaMH - varchar(9)
			          @DiemMieng , -- DiemMieng - float
			          @Diem15p , -- Diem15p - float
			          @Diem1h , -- Diem1h - float
			          @DiemHK  -- DiemHK - float
			        )
		END
	ELSE
		RAISERROR('Mã không tồn tại',12,1)

 END
GO
/****** Object:  StoredProcedure [dbo].[InsertRoomClass]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertRoomClass]
(
	@ID VARCHAR(9) ,
	@MaPhong VARCHAR(9) ,
	@MaLop VARCHAR(9) ,
	@KipHoc NVARCHAR(20),
	@HocKyNamHoc NVARCHAR(20) 

)
as
	BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.PhongHoc WHERE MaPhong=@MaPhong
	DECLARE @CheckID2 INT
	SELECT  @CheckID2 = COUNT(*) FROM dbo.Lop WHERE Malop=@MaLop
	DECLARE @CheckID3 INT
	SELECT  @CheckID3 = COUNT(*) FROM dbo.PhongLop WHERE ID=@ID
	IF(@CheckID3=0 AND @CheckID=1 AND @CheckID2=1)
		INSERT INTO dbo.PhongLop
		        (ID, MaPhong, MaLop, KipHoc, HocKyNamHoc )
		VALUES  ( @ID,
				  @MaPhong, -- MaPhong - varchar(9)
		          @MaLop, -- MaLop - varchar(9)
		          @KipHoc, -- KipHoc - nvarchar(20)
		          @HocKyNamHoc  -- HocKyNamHoc - nvarchar(20)
		          )
	ELSE
		RAISERROR('Trùng mã hoặc mã không tồn tại',12,1)
END		
GO
/****** Object:  StoredProcedure [dbo].[sp_InsHocSinh]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsHocSinh](
	@MaHS VARCHAR(9) ,
	@HoTen nvarchar(100) ,
	@NgaySinh date ,
	@DiaChi nvarchar(200) ,
	@GioiTinh bit ,
	@Sdt VARCHAR(15),
	@TenPhuHuynh nvarchar(100) ,
	@SDTPhuHuynh nvarchar(100),
	@MaLop VARCHAR(9)
	)
AS
BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.HocSinh WHERE MaHS=@MaHS
	IF(@CheckID=0)
		INSERT INTO dbo.HocSinh
		        ( MaHS ,
		          HoTen ,
		          NgaySinh ,
		          DiaChi ,
		          GioiTinh ,
		          Sdt ,
		          TenPhuHuynh ,
		          SDTPhuHuynh ,
		          MaLop
		        )
		VALUES  ( 
		@MaHS ,
		@HoTen,
		@NgaySinh ,
		@DiaChi  ,
		@GioiTinh ,
		@Sdt ,
		@TenPhuHuynh ,
		@SDTPhuHuynh ,
		@MaLop
)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateHocSinh]    Script Date: 10/06/2018 2:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateHocSinh](
	@MaHS VARCHAR(9) ,
	@HoTen nvarchar(100) ,
	@NgaySinh date ,
	@DiaChi nvarchar(200) ,
	@GioiTinh bit ,
	@Sdt VARCHAR(15),
	@TenPhuHuynh nvarchar(100) ,
	@SDTPhuHuynh nvarchar(100),
	@MaLop VARCHAR(9)
)
AS
BEGIN
	DECLARE @CheckID INT
	SELECT  @CheckID = COUNT(*) FROM dbo.HocSinh WHERE MaHS=@MaHS
	IF(@CheckID=1)
	UPDATE dbo.HocSinh
	SET MaHS=@MaHS,HoTen=@HoTen,NgaySinh=@NgaySinh,GioiTinh=@GioiTinh,Sdt=@sdt,TenPhuHuynh=@TenPhuHuynh,SDTPhuHuynh=@SDTPhuHuynh
	WHERE MaHS=@MaHS
END

GO
