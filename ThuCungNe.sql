CREATE DATABASE [WebsiteThuCung]
GO
USE [WebsiteThuCung]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MAADMIN] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](200) NOT NULL,
	[DIENTHOAI] [nvarchar](11) NOT NULL,
	[TENLOAI] [nvarchar](100) NOT NULL,
	[TENDN] [nvarchar](30) NOT NULL,
	[MATKHAU] [varchar](20) NOT NULL,
	[AVATAR] [nvarchar](100) NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
 CONSTRAINT [P_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MAADMIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCNANG_QUYEN]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCNANG_QUYEN](
	[MACHUCNANG] [varchar](100) NOT NULL,
	[TENCN] [nvarchar](200) NULL,
 CONSTRAINT [PK_CHUCNANG_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MACHUCNANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDONDATHANG]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDONDATHANG](
	[MADH] [int] NOT NULL,
	[MASP] [int] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[DONGIA] [int] NOT NULL,
	[THANHTIEN] [decimal](18, 0) NULL,
 CONSTRAINT [P_CTDONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MADH] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NOT NULL,
	[NGAYDAT] [datetime] NOT NULL,
	[NGAYGIAO] [datetime] NULL,
	[TINHTRANGDH] [bit] NULL,
	[DATHANHTOAN] [bit] NULL,
	[TONGTIEN] [decimal](18, 0) NULL,
 CONSTRAINT [P_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAMGIA]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAMGIA](
	[MAGIAMGIA] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [int] NOT NULL,
	[PHAMTRAMGIAM] [int] NOT NULL,
	[ANHIEN] [bit] NULL,
 CONSTRAINT [P_PHIEUTHANHLI] PRIMARY KEY CLUSTERED 
(
	[MAGIAMGIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINH]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINH](
	[MAHINH] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [int] NOT NULL,
	[HINH1] [nvarchar](100) NULL,
	[ANHIEN] [bit] NULL,
 CONSTRAINT [P_HINH] PRIMARY KEY CLUSTERED 
(
	[MAHINH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[HOTENKH] [nvarchar](100) NOT NULL,
	[DIENTHOAI] [nvarchar](11) NOT NULL,
	[DIACHI] [nvarchar](200) NULL,
	[TENDNKH] [nvarchar](30) NOT NULL,
	[MATKHAUKH] [varchar](200) NOT NULL,
	[EMAIL] [nvarchar](100) NULL,
	[NGAYSINH] [datetime] NULL,
	[HINHANH] [nvarchar](200) NULL,
	[KHOIPHUCMATKHAU] [nchar](200) NULL,
 CONSTRAINT [P_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KICHTHUOC]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KICHTHUOC](
	[MAKICHTHUOC] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [int] NOT NULL,
	[TENKICHTHUOC] [int] NOT NULL,
	[ANHIEN] [bit] NULL,
 CONSTRAINT [P_KICHTHUOC] PRIMARY KEY CLUSTERED 
(
	[MAKICHTHUOC] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](200) NOT NULL,
 CONSTRAINT [P_LOAI] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAUSAC]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAUSAC](
	[MAMAUSAC] [int] IDENTITY(1,1) NOT NULL,
	[TENMAUSAC] [nvarchar](100) NOT NULL,
	[ANHIEN] [bit] NULL,
 CONSTRAINT [P_MAUSAC] PRIMARY KEY CLUSTERED 
(
	[MAMAUSAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MAPQ] [int] IDENTITY(1,1) NOT NULL,
	[MAADMIN] [int] NOT NULL,
	[MACHUCNANG] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[MAPQ] ASC,
	[MAADMIN] ASC,
	[MACHUCNANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAPKHO]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAPKHO](
	[MAPHIEUNK] [int] IDENTITY(1,1) NOT NULL,
	[NGAYNK] [datetime] NOT NULL,
	[MASP] [int] NOT NULL,
	[SOLUONG] [int] NOT NULL,
 CONSTRAINT [P_PHIEUNHAPKHO] PRIMARY KEY CLUSTERED 
(
	[MAPHIEUNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[TENSP] [nvarchar](200) NOT NULL,
	[DONGIAMUA] [decimal](18, 0) NULL,
	[DONGIABAN] [decimal](18, 0) NULL,
	[MATH] [int] NOT NULL,
	[MALOAI] [int] NOT NULL,
	[MAMAUSAC] [int] NULL,
	[SOLUONG] [int] NULL,
	[HINHANH] [nvarchar](100) NULL,
	[MOTA] [nvarchar](max) NOT NULL,
	[THANHTOANON] [nvarchar](200) NULL,
	[ANHIEN] [bit] NULL,
 CONSTRAINT [P_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 30/09/2023 12:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MATH] [int] IDENTITY(1,1) NOT NULL,
	[TENTH] [nvarchar](100) NOT NULL,
	[LOGO] [nvarchar](100) NULL,
	[ANHIEN] [bit] NULL,
 CONSTRAINT [P_THUONGHIEU] PRIMARY KEY CLUSTERED 
(
	[MATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([MAADMIN], [HOTEN], [DIACHI], [DIENTHOAI], [TENLOAI], [TENDN], [MATKHAU], [AVATAR], [EMAIL]) VALUES (1, N'ADMIN', N'HCM', N'0123456789', N'Admin', N'admin', N'123123', N'dog.png', N'xxx@gmail.com')
INSERT [dbo].[ADMIN] ([MAADMIN], [HOTEN], [DIACHI], [DIENTHOAI], [TENLOAI], [TENDN], [MATKHAU], [AVATAR], [EMAIL]) VALUES (2, N'Tấn Tài', N'HCM', N'0456789123', N'Nhân viên', N'staff', N'staff123', N'dog.png', N'tantai123@gmail.com')
INSERT [dbo].[ADMIN] ([MAADMIN], [HOTEN], [DIACHI], [DIENTHOAI], [TENLOAI], [TENDN], [MATKHAU], [AVATAR], [EMAIL]) VALUES (3, N'Huyền Trang', N'HCM', N'0654123987', N'Nhân viên', N'staff1', N'staff123', N'cat.png', N'huyentrang123@gmail.com')
INSERT [dbo].[ADMIN] ([MAADMIN], [HOTEN], [DIACHI], [DIENTHOAI], [TENLOAI], [TENDN], [MATKHAU], [AVATAR], [EMAIL]) VALUES (4, N'Hải Nam', N'HCM', N'0321564978', N'Nhân viên', N'staff2', N'staff123', N'dogandcat.png', N'hainam123@gmail.com')
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
GO
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_CHUCNANG', N'Quản lý chức năng quyền')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_DONDATHANG', N'Quản lý đơn đặt hàng')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_HINHMOTA', N'Quản lý hình mô tả')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_KHACHHANG', N'Quản lý khách hàng')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_KHOSANPHAM', N'Quản lý kho sản phẩm')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_KICHTHUOC', N'Quản lý kích thước')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_LOAISANPHAM', N'Quản lý loại sản phẩm')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_MAUSAC', N'Quản lý màu sắc')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_PHANQUYEN', N'Quản lý phân quyền')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_QUANTRIVIEN', N'Quản lý quản trị viên')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_SANPHAM', N'Quản lý sản phẩm')
INSERT [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG], [TENCN]) VALUES (N'QL_THUONGHIEU', N'Quản lý thương hiệu')
GO
INSERT [dbo].[CTDONDATHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [THANHTIEN]) VALUES (1, 2, 1, 9000000, CAST(9000000 AS Decimal(18, 0)))
INSERT [dbo].[CTDONDATHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [THANHTIEN]) VALUES (1, 4, 12, 15000000, CAST(180000000 AS Decimal(18, 0)))
INSERT [dbo].[CTDONDATHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [THANHTIEN]) VALUES (2, 5, 1, 9900000, CAST(9900000 AS Decimal(18, 0)))
INSERT [dbo].[CTDONDATHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [THANHTIEN]) VALUES (2, 10, 1, 800000, CAST(800000 AS Decimal(18, 0)))
INSERT [dbo].[CTDONDATHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [THANHTIEN]) VALUES (3, 8, 1, 9800000, CAST(9800000 AS Decimal(18, 0)))
INSERT [dbo].[CTDONDATHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [THANHTIEN]) VALUES (4, 2, 3, 9000000, CAST(27000000 AS Decimal(18, 0)))
INSERT [dbo].[CTDONDATHANG] ([MADH], [MASP], [SOLUONG], [DONGIA], [THANHTIEN]) VALUES (4, 9, 4, 9900000, CAST(39600000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MADH], [MAKH], [NGAYDAT], [NGAYGIAO], [TINHTRANGDH], [DATHANHTOAN], [TONGTIEN]) VALUES (1, 1, CAST(N'2023-09-29T11:11:35.427' AS DateTime), CAST(N'2023-09-29T00:00:00.000' AS DateTime), 0, 1, CAST(189000000 AS Decimal(18, 0)))
INSERT [dbo].[DONDATHANG] ([MADH], [MAKH], [NGAYDAT], [NGAYGIAO], [TINHTRANGDH], [DATHANHTOAN], [TONGTIEN]) VALUES (2, 2, CAST(N'2023-09-30T10:04:08.890' AS DateTime), CAST(N'2023-09-30T00:00:00.000' AS DateTime), 1, 1, CAST(10700000 AS Decimal(18, 0)))
INSERT [dbo].[DONDATHANG] ([MADH], [MAKH], [NGAYDAT], [NGAYGIAO], [TINHTRANGDH], [DATHANHTOAN], [TONGTIEN]) VALUES (3, 2, CAST(N'2023-09-30T10:04:44.703' AS DateTime), CAST(N'2023-09-23T00:00:00.000' AS DateTime), 1, 0, CAST(9800000 AS Decimal(18, 0)))
INSERT [dbo].[DONDATHANG] ([MADH], [MAKH], [NGAYDAT], [NGAYGIAO], [TINHTRANGDH], [DATHANHTOAN], [TONGTIEN]) VALUES (4, 3, CAST(N'2023-09-30T10:27:39.660' AS DateTime), CAST(N'2023-09-29T00:00:00.000' AS DateTime), 0, 0, CAST(66600000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[HINH] ON 

INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (1, 3, N'cho-poodle-vang-mo-thuan-chung-duc-2.png', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (5, 1, N'rsa-1080x800.jpg', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (6, 2, N'rsa-1080x800.jpg', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (7, 4, N'dan-cho-alaska-mau-nau-do-va-hong-phan-6.png', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (8, 5, N'cho-lap-xuong-nau-6.png', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (10, 6, N'cho-lap-xuong-dachshund-mau-vang-bo-2-thang-tuoi-16.jpg', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (11, 7, N'aln-tai-cup-mau-silver-mat-xanh-cai-6.png', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (12, 8, N'meo-anh-long-dai-1.jpg', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (13, 9, N'meo-aln-munchkin-chan-ngan-bicolor-8.png', NULL)
INSERT [dbo].[HINH] ([MAHINH], [MASP], [HINH1], [ANHIEN]) VALUES (14, 10, N'DSC03238-2-1536x1024.jpg', NULL)
SET IDENTITY_INSERT [dbo].[HINH] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [HOTENKH], [DIENTHOAI], [DIACHI], [TENDNKH], [MATKHAUKH], [EMAIL], [NGAYSINH], [HINHANH], [KHOIPHUCMATKHAU]) VALUES (1, N'nnnn', N'0987654322', N'nnnn', N'nnnn', N'e10adc3949ba59abbe56e057f20f883e', N'anh@gmail.com', CAST(N'2023-09-07T00:00:00.000' AS DateTime), N'DSC03117-1536x1024.jpg', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTENKH], [DIENTHOAI], [DIACHI], [TENDNKH], [MATKHAUKH], [EMAIL], [NGAYSINH], [HINHANH], [KHOIPHUCMATKHAU]) VALUES (2, N'minh', N'0987654325', N'hcm q12', N'minh', N'e125be4ffdcbbb67898a4614b946d8fc', N'minh@gmail.com', CAST(N'2023-09-23T00:00:00.000' AS DateTime), N'DSC03238-2-1536x1024.jpg', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTENKH], [DIENTHOAI], [DIACHI], [TENDNKH], [MATKHAUKH], [EMAIL], [NGAYSINH], [HINHANH], [KHOIPHUCMATKHAU]) VALUES (3, N'demo', N'0987654329', N'hcm q12', N'demo', N'c514c91e4ed341f263e458d44b3bb0a7', N'demo@gmail.com', CAST(N'2023-09-29T00:00:00.000' AS DateTime), N'meo-aln-munchkin-chan-ngan-bicolor-8.png', NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KICHTHUOC] ON 

INSERT [dbo].[KICHTHUOC] ([MAKICHTHUOC], [MASP], [TENKICHTHUOC], [ANHIEN]) VALUES (1, 41, 0, NULL)
INSERT [dbo].[KICHTHUOC] ([MAKICHTHUOC], [MASP], [TENKICHTHUOC], [ANHIEN]) VALUES (2, 41, 1, NULL)
INSERT [dbo].[KICHTHUOC] ([MAKICHTHUOC], [MASP], [TENKICHTHUOC], [ANHIEN]) VALUES (3, 28, 2, NULL)
INSERT [dbo].[KICHTHUOC] ([MAKICHTHUOC], [MASP], [TENKICHTHUOC], [ANHIEN]) VALUES (4, 3, 0, NULL)
INSERT [dbo].[KICHTHUOC] ([MAKICHTHUOC], [MASP], [TENKICHTHUOC], [ANHIEN]) VALUES (5, 10, 0, NULL)
INSERT [dbo].[KICHTHUOC] ([MAKICHTHUOC], [MASP], [TENKICHTHUOC], [ANHIEN]) VALUES (6, 2, 0, NULL)
SET IDENTITY_INSERT [dbo].[KICHTHUOC] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (1, N'Chó kiểng')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (2, N'Mèo kiểng')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (3, N'Chó con')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (4, N'Mèo con')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (5, N'Đồ chơi cho chó')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (6, N'Đồ chơi cho mèo')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (7, N'Thú cưng khác')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[MAUSAC] ON 

INSERT [dbo].[MAUSAC] ([MAMAUSAC], [TENMAUSAC], [ANHIEN]) VALUES (1, N'Đen', NULL)
INSERT [dbo].[MAUSAC] ([MAMAUSAC], [TENMAUSAC], [ANHIEN]) VALUES (2, N'Trắng', NULL)
INSERT [dbo].[MAUSAC] ([MAMAUSAC], [TENMAUSAC], [ANHIEN]) VALUES (3, N'Đỏ', NULL)
INSERT [dbo].[MAUSAC] ([MAMAUSAC], [TENMAUSAC], [ANHIEN]) VALUES (4, N'Xanh', NULL)
SET IDENTITY_INSERT [dbo].[MAUSAC] OFF
GO
SET IDENTITY_INSERT [dbo].[PHANQUYEN] ON 

INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (4, 1, N'QL_CHUCNANG')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (5, 1, N'QL_DONDATHANG')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (6, 1, N'QL_HINHMOTA')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (8, 1, N'QL_KHACHHANG')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (9, 1, N'QL_KHOSANPHAM')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (10, 1, N'QL_KICHTHUOC')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (11, 1, N'QL_LOAISANPHAM')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (14, 1, N'QL_MAUSAC')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (15, 1, N'QL_PHANQUYEN')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (16, 1, N'QL_QUANTRIVIEN')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (17, 1, N'QL_SANPHAM')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (18, 1, N'QL_THUONGHIEU')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (19, 3, N'QL_KHACHHANG')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAADMIN], [MACHUCNANG]) VALUES (20, 4, N'QL_SANPHAM')
SET IDENTITY_INSERT [dbo].[PHANQUYEN] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUNHAPKHO] ON 

INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (1, CAST(N'2023-09-29T00:00:00.000' AS DateTime), 3, 99)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (2, CAST(N'2023-09-28T00:00:00.000' AS DateTime), 1, 33)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (3, CAST(N'2023-09-22T00:00:00.000' AS DateTime), 2, 44)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (4, CAST(N'2023-09-29T00:00:00.000' AS DateTime), 4, 55)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (5, CAST(N'2023-09-22T00:00:00.000' AS DateTime), 5, 77)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (6, CAST(N'2023-09-28T00:00:00.000' AS DateTime), 5, 77)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (7, CAST(N'2023-09-28T00:00:00.000' AS DateTime), 8, 88)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (8, CAST(N'2023-09-22T00:00:00.000' AS DateTime), 9, 88)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (9, CAST(N'2023-09-28T00:00:00.000' AS DateTime), 10, 55)
INSERT [dbo].[PHIEUNHAPKHO] ([MAPHIEUNK], [NGAYNK], [MASP], [SOLUONG]) VALUES (10, CAST(N'2023-09-29T00:00:00.000' AS DateTime), 11, 77)
SET IDENTITY_INSERT [dbo].[PHIEUNHAPKHO] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (1, N'PVK00297', CAST(8000000 AS Decimal(18, 0)), CAST(10000000 AS Decimal(18, 0)), 2, 1, 2, 33, N'cho-poodle-kem-thuan-chung-duc-7.png', N'✔️ Giống: chó Poodle Tiny.

✔️ Màu sắc: kem.

✔️ Giới tính: đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (2, N'PVM00311', CAST(7000000 AS Decimal(18, 0)), CAST(9000000 AS Decimal(18, 0)), 2, 3, 2, 40, N'cho-poodle-vang-mo-thuan-chung-duc-2.png', N'✔️ Giống: chó Poodle Tiny.

✔️ Màu sắc: vàng mơ.

✔️ Giới tính: đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (3, N'PSV00210', CAST(7600000 AS Decimal(18, 0)), CAST(9900000 AS Decimal(18, 0)), 1, 1, 2, 99, N'cho-phoc-soc-vang-duc-day-du-giay-vka-13-1.png', N'✔️ Giống: chó Pomeranian (Phốc sóc, Pom).

✔️ Màu sắc: vàng.

✔️ Giới tính: đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA), đầy đủ giấy tờ VKA.', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (4, N'PBN00001', CAST(12000000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 3, 3, 1, 43, N'dan-cho-alaska-mau-nau-do-va-hong-phan-3.png', N'✔️ Giống: chó Alaska Malamute.

✔️ Màu sắc: nâu đỏ, hồng phấn.

✔️ Giới tính: 02 đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (5, N'LXN00006', CAST(8800000 AS Decimal(18, 0)), CAST(9900000 AS Decimal(18, 0)), 5, 1, 1, 153, N'cho-lap-xuong-nau-3.png', N'✔️ Giống: chó Dachshund (Lạp Xưởng).

✔️ Màu sắc: nâu.

✔️ Giới tính: đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (6, N'LXV00002', CAST(7700000 AS Decimal(18, 0)), CAST(9000000 AS Decimal(18, 0)), 5, 1, 1, 0, N'cho-lap-xuong-dachshund-mau-vang-bo-2-thang-tuoi-2.jpg', N'✔️ Giống: chó Lạp xưởng (Dachshund, chó xúc xích).

✔️ Màu sắc: vàng bò (nâu chocolate).

✔️ Giới tính: đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).

Để xem video, clip thực tế các bé cún mới nhất xuất từ Trại chó Dogily Kennel Đà Lạt. Mời bạn đăng ký kênh Youtube Dogily Farm – Nông trại thú cưng tại đây.

✔️ Xem thêm về giống chó Lạp Xưởng & thương hiệu Dogily Petshop tại: https://dogily.vn/cho-lap-xuong/', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (7, N'SNS00155', CAST(6700000 AS Decimal(18, 0)), CAST(7800000 AS Decimal(18, 0)), 7, 4, 1, 0, N'aln-tai-cup-mau-silver-mat-xanh-cai-3.png', N'✔️ Giống: mèo Scottish (tai cụp) lông ngắn.

✔️ Màu sắc: Silver.

✔️ Giới tính: cái.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.

✔️ Đặc điểm: tai cụp.', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (8, N'ADT00111', CAST(6790000 AS Decimal(18, 0)), CAST(9800000 AS Decimal(18, 0)), 6, 2, 2, 87, N'meo-anh-long-dai-10.jpg', N'Tên: Snow White
Giống: mèo British Longhair (mèo Anh lông dài, Ald)
Màu sắc: trắng, hai màu mắt.
Giới tính: đực
Tuổi: 2 tháng.
Tình trạng: có sẵn.
Sổ sức khỏe: có
Tiêm vacxin: 2 mũi
Tẩy giun: lần 1.
Xuất xứ, nguồn gốc: sinh tại Việt Nam.
Giấy Tica, Wcf: không
Bảo hành: 15-45 ngày tùy gói.
Vận chuyển: miễn phí toàn quốc.
Tặng kèm phụ kiện: voucher 1 triệu: mua đồ dùng thú cưng của Dogily Pet Mart, khám chữa bệnh tại phòng khám thú y Dogily Vet, tắm sấy, cắt tỉa tại Dogily Spa & Grooming.', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (9, N'MNB00135', CAST(7700000 AS Decimal(18, 0)), CAST(9900000 AS Decimal(18, 0)), 7, 2, 1, 84, N'meo-aln-munchkin-chan-ngan-bicolor-2.png', N'THÔNG TIN
✔️ Giống: mèo ALN, mèo Munchkin (chân ngắn).

✔️ Màu sắc: bicolor.

✔️ Giới tính: cái.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (10, N'Chuồng gỗ cho thú cưng', CAST(340000 AS Decimal(18, 0)), CAST(800000 AS Decimal(18, 0)), 9, 5, 1, 54, N'DSC03117-1536x1024.jpg', N'x', NULL, NULL)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIAMUA], [DONGIABAN], [MATH], [MALOAI], [MAMAUSAC], [SOLUONG], [HINHANH], [MOTA], [THANHTOANON], [ANHIEN]) VALUES (11, N'demo them sp moi', CAST(8888 AS Decimal(18, 0)), CAST(999999 AS Decimal(18, 0)), 4, 1, 1, 77, N'dan-cho-alaska-mau-nau-do-va-hong-phan-3.png', N'abcd', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (1, N'Phôc sốc', N'pasted image 0.png', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (2, N'POODLE', N'images.jpg', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (3, N'PUG', N'logo-chu-cho-pug-34.png', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (4, N'ALASKA', N'download.jpg', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (5, N'Lạp Xưởng', N'cho-lap-xuong-Dachshund-1.png', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (6, N'Anh lông dài', N'meo-anh-long-ngan-opet-14.jpg', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (7, N'Anh lông ngắn', N'meo-anh-long-ngan-opet-14.jpg', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (8, N'Thức ăn', N'thuc-an-hat-cho-meo-kit-cat-kitten-pregnant-cat-1-2kg.jpg', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [LOGO], [ANHIEN]) VALUES (9, N'Chuồng', N'pasted-image-0-30.png', NULL)
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
GO
ALTER TABLE [dbo].[CTDONDATHANG]  WITH CHECK ADD  CONSTRAINT [F_CTDONDATHANG_MADH] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONDATHANG] ([MADH])
GO
ALTER TABLE [dbo].[CTDONDATHANG] CHECK CONSTRAINT [F_CTDONDATHANG_MADH]
GO
ALTER TABLE [dbo].[CTDONDATHANG]  WITH CHECK ADD  CONSTRAINT [F_CTDONDATHANG_MASP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CTDONDATHANG] CHECK CONSTRAINT [F_CTDONDATHANG_MASP]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [F_DONDATHANG_MAKH] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [F_DONDATHANG_MAKH]
GO
ALTER TABLE [dbo].[GIAMGIA]  WITH CHECK ADD  CONSTRAINT [F_PHIEUTHANHLI_MASP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[GIAMGIA] CHECK CONSTRAINT [F_PHIEUTHANHLI_MASP]
GO
ALTER TABLE [dbo].[HINH]  WITH CHECK ADD  CONSTRAINT [F_HINH_MASP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[HINH] CHECK CONSTRAINT [F_HINH_MASP]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_ADMIN] FOREIGN KEY([MAADMIN])
REFERENCES [dbo].[ADMIN] ([MAADMIN])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_ADMIN]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_CHUCNANG_QUYEN] FOREIGN KEY([MACHUCNANG])
REFERENCES [dbo].[CHUCNANG_QUYEN] ([MACHUCNANG])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_CHUCNANG_QUYEN]
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO]  WITH CHECK ADD  CONSTRAINT [F_PHIEUNHAPKHO_MASP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[PHIEUNHAPKHO] CHECK CONSTRAINT [F_PHIEUNHAPKHO_MASP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [F_SANPHAM_LOAI] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAI] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [F_SANPHAM_LOAI]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [F_SANPHAM_MAUSAC] FOREIGN KEY([MAMAUSAC])
REFERENCES [dbo].[MAUSAC] ([MAMAUSAC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [F_SANPHAM_MAUSAC]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [F_SANPHAM_THUONGHIEU] FOREIGN KEY([MATH])
REFERENCES [dbo].[THUONGHIEU] ([MATH])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [F_SANPHAM_THUONGHIEU]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [CK__SANPHAM__DONGIAB__412EB0B6] CHECK  (([DONGIABAN]>=(0)))
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [CK__SANPHAM__DONGIAB__412EB0B6]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [CK__SANPHAM__DONGIAM__403A8C7D] CHECK  (([DONGIAMUA]>=(0)))
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [CK__SANPHAM__DONGIAM__403A8C7D]
GO

Create Table	DichVu
(
	MaDV	Int	Identity(1,1),
	TenDV	Nvarchar(70)	not null,
	ComboDV	Nvarchar(120) null,
	LoaiDV tinyint not null, --0: Khách sạn thú cưng, 1: Spa thú cưng
	Constraint	Pk_dinhluong	Primary Key(MaDV),
)
Go
Insert into DichVu values (N'Khách sạn cho chó', '', 0), 
(N'Khách sạn cho mèo', '', 0),
(N'Spa chọn gói', N'Tắm + Sấy, Vệ Sinh Tổng Quát, Nặn Tuyến Hôi', 1), 
(N'Combo Spa + Cắt tạo kiểu', N'Spa Trọn Gói, Cắt Tạo Kiểu Lông Theo Yêu Cầu, Phụ Vụ Tạo Nhà', 1),
(N'Combo Cạo Lông + Spa', N'Spa Trọn Gói, Tạo Kiểu Lông Theo Yêu Cầu , Phụ Vụ Tại Nhà', 1)

Create Table	ChiTietDichVu
(
	MaCT	Int	Identity(1,1) Primary Key,
	TieuDe	Nvarchar(70) null,
	DieuKien	Nvarchar(50) not null,
	DonGia	Int Default 0,
	MaDV	Int,
	Constraint Fk_chitiet_dv Foreign Key(MaDV) References	DichVu(MaDV),
)
Go
Insert into ChiTietDichVu values (N'Các bé chó dưới 5kg', N'Dưới 5Kg', 120000, 1), 
(N'Các bé chó dưới 5kg', N'Dưới 5kg', 120000, 1), 
(N'Các bé chó từ 5kg đến dưới 10kg', N'Từ 5kg - 10kg', 150000, 1), 
(N'Các bé chó từ 10kg đến dưới 15kg', N'Từ 10kg - 15kg', 180000, 1),
(N'Giữ không nhốt chuồng (chó < 10kg)', N'Giữ không nhốt chuồng (chó < 10kg)', 98000, 1),
(N'Gửi chó trong ngày', N'Gửi trong ngày', 220000, 1),

(N'Các bé mèo dưới 3kg', N'Dưới 3kg', 89000, 2),
(N'Các bé chó trên 3kg', N'Trên 3kg', 109000, 2),
(N'Gửi chó trong ngày', N'Gửi trong ngày', 60000, 2),

(N'', N'Dưới 5kg', 180000, 3),
(N'', N'5kg - 10kg', 250000, 3),
(N'', N'10kg - 15kg', 300000, 3),

(N'', N'Dưới 5kg', 350000, 4),
(N'', N'5kg - 10kg', 420000, 4),
(N'', N'10kg - 15kg', 550000, 4),

(N'', N'Dưới 5kg', 280000, 5),
(N'', N'5kg - 10kg', 320000, 5),
(N'', N'10kg - 15kg', 520000, 5)

--Drop table DangKyDichVu
--Go
Create Table	DangKyDichVu
(
	SoDK	Int Identity(1,1),
	MaKH	Int not null,
	MaCT	Int not null,
	NgayDangKy	Date default GetDate(),
	Hoten Nvarchar(200) null,
	SDT varchar(50) null,
	Diachi nvarchar(200) null,
	TongTien int,
	TinhTrang	int default 0, --0:Đang chờ duyệt; 1: Đã duyệt
	Constraint	Pk_DangKyDichVu	Primary Key(SoDK),
	Constraint	Fk_DKDV_KH	Foreign	Key(MaKH)	References	KHACHHANG(MAKH) On Delete Cascade,
	Constraint	Fk_DKDV_DV	Foreign	Key(MaCT)	References	ChiTietDichVu(MaCT) On Delete Cascade
)
Go