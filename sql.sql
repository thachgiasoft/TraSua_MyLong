USE [gpm_QuanNhauVuonThuong]
GO
/****** Object:  Table [dbo].[CF_Ban]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_Ban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaBan] [nvarchar](50) NULL,
	[TenBan] [nvarchar](250) NULL,
	[IDKhuVuc] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[IDChiNhanh] [int] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_Ban] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiNhanh]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiNhanh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaChiNhanh] [nvarchar](50) NULL,
	[TenChiNhanh] [nvarchar](250) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[NgayMo] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietCongNo]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietCongNo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoHoaDon] [nvarchar](50) NULL,
	[IDNhaCungCap] [int] NULL,
	[HinhThucThanhToan] [nvarchar](150) NULL,
	[IDMaPhieu] [int] NULL,
	[SoTienThanhToan] [float] NULL,
	[NoiDung] [nvarchar](250) NULL,
	[NgayThanhToan] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_ChiTietCongNo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietGio]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietGio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GioBatDau] [datetime] NULL,
	[GioKetThuc] [datetime] NULL,
	[TongGioChoi] [nvarchar](255) NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[IDBan] [int] NULL,
	[IDHoaDon] [int] NULL,
	[TrangThai] [int] NULL,
	[ThanhToan] [int] NULL,
 CONSTRAINT [PK_CF_ChiTietGio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietHoaDon]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietHoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDHangHoa] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[IDBan] [int] NULL,
	[MaHangHoa] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[TrongLuong] [float] NULL,
 CONSTRAINT [PK_CF_ChiTietHoaDon_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietHoaDon_Temp]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietHoaDon_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDHangHoa] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[IDBan] [int] NULL,
	[MaHangHoa] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[TrongLuong] [float] NULL,
 CONSTRAINT [PK_CF_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DatBan]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DatBan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[GioDat] [nvarchar](150) NULL,
	[IDBan] [int] NULL,
 CONSTRAINT [PK_CF_DatBan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonDatHang]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonDatHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChiNhanh] [int] NULL,
	[SoDonHang] [nvarchar](50) NULL,
	[IDNguoiLap] [int] NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [float] NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[IDNhaCungCap] [int] NULL,
	[TrangThaiCongNo] [int] NULL,
 CONSTRAINT [PK_CF_DonDatHang_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonDatHang_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDDonHang] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuong] [float] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet_Temp]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonDatHang_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDDonHang] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuong] [float] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_DonDatHang_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonViTinh]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonViTinh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaDVT] [nvarchar](50) NULL,
	[TenDonViTinh] [nvarchar](255) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_Gio]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_Gio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaGio] [nvarchar](50) NULL,
	[TyLe] [int] NULL,
	[GioBatDau] [datetime] NULL,
	[GioKetThuc] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_Gio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HangHoa]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HangHoa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHangHoa] [nvarchar](50) NULL,
	[TenHangHoa] [nvarchar](250) NULL,
	[GiaBan] [float] NULL,
	[IDDonViTinh] [int] NULL,
	[IDNhomHang] [int] NULL,
	[DaXoa] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[GhiChu] [nvarchar](250) NULL,
 CONSTRAINT [PK_CF_HangHoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HangHoa_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHangHoa] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TrongLuong] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[NhaCungCap] [nvarchar](250) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_HangHoa_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet_Temp]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HangHoa_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHangHoa] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TrongLuong] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[NhaCungCap] [nvarchar](250) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_HangHoa_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HoaDon]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GioVao] [datetime] NULL,
	[GioRa] [datetime] NULL,
	[IDBan] [int] NULL,
	[TrangThai] [int] NULL,
	[MaHoaDon] [nvarchar](50) NULL,
	[IDNhanVien] [int] NULL,
	[TongTien] [float] NULL,
	[GiamGia] [float] NULL,
	[KhachCanTra] [float] NULL,
	[KhachThanhToan] [float] NULL,
	[TienThua] [float] NULL,
	[TienGio] [float] NULL,
	[TrangThaiKetCa] [int] NULL,
	[LanIn] [int] NULL,
	[HinhThucGiamGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_CF_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KetCa]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KetCa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TongTienSauCa] [float] NULL,
	[IDNhanVien] [int] NULL,
	[IDChiNhanh] [int] NULL,
	[TienGio] [float] NULL,
	[TienNuoc] [float] NULL,
 CONSTRAINT [PK_CF_KetCa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KeyCode]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KeyCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GetKey] [nvarchar](255) NULL,
	[NgayKichHoat] [datetime] NULL,
	[ThoiGianSuDung] [int] NULL,
 CONSTRAINT [PK_CF_KeyCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KhuVuc]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KhuVuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaKhuVuc] [nvarchar](50) NULL,
	[KyHieu] [nvarchar](50) NULL,
	[TenKhuVuc] [nvarchar](250) NULL,
	[GiaKhuVuc] [float] NULL,
	[IDChiNhanh] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[GhiChu] [nvarchar](250) NULL,
 CONSTRAINT [PK_CF_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KiemKho]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KiemKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [int] NULL,
	[NgayKiemKho] [datetime] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_KiemKho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KiemKho_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuKiemKho] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[ChenhLech] [float] NULL,
	[ThucTe] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_KiemKho_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet_Temp]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KiemKho_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuKiemKho] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[ChenhLech] [float] NULL,
	[ThucTe] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_KiemKho_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_LichSuKho]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_LichSuKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[NgayThayDoi] [datetime] NULL,
 CONSTRAINT [PK_GPM_LichSuKho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_LichSuThayDoiGia]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_LichSuThayDoiGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[NgayThayDoi] [datetime] NULL,
 CONSTRAINT [PK_GPM_LichSuThayDoiGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_LichSuTruyCap]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_LichSuTruyCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChiNhanh] [int] NULL,
	[IDNhom] [int] NULL,
	[IDNguoiDung] [int] NULL,
	[Menu] [nvarchar](50) NULL,
	[HanhDong] [nvarchar](50) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [PK_GPM_LichSuTruyCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NguoiDung]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nvarchar](50) NULL,
	[TenNguoiDung] [nvarchar](250) NULL,
	[TenDangNhap] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](255) NULL,
	[Email] [nvarchar](150) NULL,
	[IDNhomNguoiDung] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NguyenLieu]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NguyenLieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[TenNguyenLieu] [nvarchar](250) NULL,
	[NhaCungCap] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDDonViTinh] [int] NULL,
	[GiaMua] [float] NULL,
	[GiaBan] [float] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_CF_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NguyenLieu_Barcode]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NguyenLieu_Barcode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHangHoa] [int] NULL,
	[Barcode] [nvarchar](255) NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_NguyenLieu_Barcode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NhaCungCap]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NhaCungCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](250) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[NguoiLienHe] [nvarchar](50) NULL,
	[MaSoThue] [nvarchar](50) NULL,
	[LinhVucKinhDoanh] [nvarchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[GhiChu] [nvarchar](250) NULL,
	[DaXoa] [int] NULL,
	[CongNo] [float] NULL,
 CONSTRAINT [PK_CF_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NhomHangHoa]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NhomHangHoa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhom] [nvarchar](50) NULL,
	[TenNhom] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_NhomHangHoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NhomNguoiDung]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NhomNguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhom] [nvarchar](50) NULL,
	[TenNhom] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_NhomNguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_PhieuXuatKhac]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_PhieuXuatKhac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNhanVien] [int] NULL,
	[NgayLapPhieu] [datetime] NULL,
	[IDLyDoXuat] [int] NULL,
	[IDChiNhanh] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TongTien] [float] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_PhieuXuatKhac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuXuatKhac] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuongXuat] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_PhieuXuatKhac_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuXuatKhac] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuongXuat] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_PhieuXuatKhac_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_TonKho]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_TonKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguyenLieu] [int] NULL,
	[IDChiNhanh] [int] NULL,
	[TrongLuong] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_TonKho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_TrangThaiPhieuXuatKhac]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_TrangThaiPhieuXuatKhac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](250) NULL,
 CONSTRAINT [PK_GPM_TrangThaiPhieuXuatKhac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_ChiTietHoaDon]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_ChiTietHoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaMua] [float] NULL,
	[GiaBan] [float] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [float] NULL,
	[DaXoa] [int] NULL,
	[NgayBan] [datetime] NULL,
	[IDKho] [int] NULL,
 CONSTRAINT [PK_GPM_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_HoaDon]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [nvarchar](255) NULL,
	[IDKho] [int] NULL,
	[IDKhachHang] [int] NULL,
	[IDNhanVien] [int] NULL,
	[NgayBan] [smalldatetime] NULL,
	[SoLuongHang] [int] NULL,
	[TongTien] [float] NULL,
	[GiamGia] [float] NULL,
	[KhachCanTra] [float] NULL,
	[KhachThanhToan] [float] NULL,
	[SoLanIn] [int] NULL,
	[DaXoa] [int] NULL,
	[HinhThucGiamGia] [nvarchar](50) NULL,
	[TyLeGiam] [float] NULL,
 CONSTRAINT [PK_GPM_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_KhachHang]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_GPM_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_LichSuKho]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_LichSuKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKho] [int] NULL,
	[IDHangHoa] [int] NULL,
	[IDNhanVien] [int] NULL,
	[SoLuong] [int] NULL,
	[SoLuongMoi] [int] NULL,
	[NoiDung] [nvarchar](200) NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_GPM_LichSuKho_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 22/11/2017 8:34:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[CongTy] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[TinhGio] [int] NULL,
	[TestDuLieu] [nvarchar](255) NULL,
	[ReportBill] [int] NULL,
	[MayIn] [nvarchar](255) NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CF_Ban] ON 

INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (392, N'000001', N'A - 1', 25, 0, CAST(0x0000A8320102A944 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (393, N'000002', N'A - 2', 25, 0, CAST(0x0000A8320102A960 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (394, N'000003', N'A - 3', 25, 0, CAST(0x0000A8320102A980 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (395, N'000004', N'A - 4', 25, 0, CAST(0x0000A8320102A9A1 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (396, N'000005', N'A - 5', 25, 0, CAST(0x0000A8320102A9BD AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (397, N'000006', N'A - 6', 25, 0, CAST(0x0000A8320102A9DE AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (398, N'000007', N'A - 7', 25, 0, CAST(0x0000A8320102A9FF AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (399, N'000008', N'A - 8', 25, 0, CAST(0x0000A8320102AA1B AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (400, N'000009', N'A - 9', 25, 0, CAST(0x0000A8320102AA3C AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (401, N'000010', N'A - 10', 25, 0, CAST(0x0000A8320102AA5D AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (402, N'000011', N'A - 11', 25, 2, CAST(0x0000A8320102AA7E AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (403, N'000012', N'A - 12', 25, 2, CAST(0x0000A8320102AA9A AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (404, N'000013', N'A - 13', 25, 0, CAST(0x0000A8320102AABB AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (405, N'000001', N'B - 1', 26, 0, CAST(0x0000A83201089AE8 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (406, N'000002', N'B - 2', 26, 0, CAST(0x0000A83201089B09 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (407, N'000003', N'B - 3', 26, 0, CAST(0x0000A83201089B2A AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (408, N'000001', N'L - 1', 27, 0, CAST(0x0000A8320108F78F AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (409, N'000002', N'L - 2', 27, 0, CAST(0x0000A8320108F7B0 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (410, N'000003', N'L - 3', 27, 0, CAST(0x0000A8320108F7D1 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (411, N'000004', N'L - 4', 27, 0, CAST(0x0000A8320108F7ED AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (412, N'000005', N'L - 5', 27, 0, CAST(0x0000A8320108F80E AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (413, N'000006', N'L - 6', 27, 0, CAST(0x0000A8320108F82A AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (414, N'000007', N'L - 7', 27, 0, CAST(0x0000A8320108F84B AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (415, N'000008', N'L - 8', 27, 0, CAST(0x0000A8320108F86C AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (416, N'000009', N'L - 9', 27, 0, CAST(0x0000A8320108F888 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (417, N'000010', N'L - 10', 27, 0, CAST(0x0000A8320108F8A9 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (418, N'000001', N'PL - 1', 28, 0, CAST(0x0000A8320109607F AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (419, N'000002', N'PL - 2', 28, 0, CAST(0x0000A832010960A0 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (420, N'000003', N'PL - 3', 28, 2, CAST(0x0000A832010960C1 AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[CF_Ban] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] ON 

INSERT [dbo].[CF_ChiNhanh] ([ID], [MaChiNhanh], [TenChiNhanh], [DienThoai], [DiaChi], [NgayMo], [NgayCapNhat], [DaXoa]) VALUES (1, N'0001', N'Vườn Thương', N'0123456789', N'Long Xuyên ', CAST(0x0000A7D000000000 AS DateTime), CAST(0x0000A83201010319 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiTietHoaDon_Temp] ON 

INSERT [dbo].[CF_ChiTietHoaDon_Temp] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (15999, 10211, 177, 2, 70000, 140000, 403, N'000002', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon_Temp] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (16000, 10211, 176, 2, 80000, 160000, 403, N'000001', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon_Temp] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (16001, 10212, 56, 1, 180000, 180000, 420, N'0000001', 6, 1)
SET IDENTITY_INSERT [dbo].[CF_ChiTietHoaDon_Temp] OFF
SET IDENTITY_INSERT [dbo].[CF_DonViTinh] ON 

INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (1, N'0001', N'LY', CAST(0x0000A7D000B6053A AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (2, N'0002', N'DIA', CAST(0x0000A7D000B62248 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (3, N'0003', N'TO', CAST(0x0000A7D000B64C6D AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (4, N'0004', N'CHEN', CAST(0x0000A7D000B6A796 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (5, N'0005', N'CHAI', CAST(0x0000A7D10094DFD8 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (6, N'0006', N'KG', CAST(0x0000A7D10094ECA7 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (7, N'0007', N'BIT', CAST(0x0000A7D20089B30A AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (8, N'0008', N'GIO', CAST(0x0000A7D20089BE2D AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (9, N'0009', N'BAO', CAST(0x0000A7D20089C504 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (10, N'0010', N'LON', CAST(0x0000A7D2009005CB AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (11, N'0011', N'HOP', CAST(0x0000A7D200901008 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (12, N'0012', N'GOI', CAST(0x0000A7F400A85206 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (13, N'0013', N'DIEU', CAST(0x0000A800011223A8 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (14, N'0014', N'TRAI', CAST(0x0000A801008C327E AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (15, N'0015', N'ML', CAST(0x0000A8040080FFB1 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (16, N'0016', N'CA', CAST(0x0000A80500BF29CD AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (17, N'0017', N'TU CHON', CAST(0x0000A825009D964E AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (18, N'0018', N'CAI', CAST(0x0000A82500ADBBF2 AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (19, N'0019', N'BO', CAST(0x0000A82500ADC2DE AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (20, N'0020', N'TRUNG', CAST(0x0000A832011A974C AS DateTime), 0)
INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (21, N'0021', N'CON', CAST(0x0000A8320120187F AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_DonViTinh] OFF
SET IDENTITY_INSERT [dbo].[CF_HangHoa] ON 

INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (176, N'000001', N'Khô Bò Gác Bếp', 80000, 2, 14, 0, CAST(0x0000A83201154AB9 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (177, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 70000, 2, 15, 0, CAST(0x0000A83201039A6F AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (178, N'000003', N'CHẢ GIÒ VƯỜN THƯƠNG', 70000, 2, 14, 0, CAST(0x0000A832011778B8 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (179, N'000004', N'BÌ MẮM LÁ SUNG', 90000, 2, 14, 0, CAST(0x0000A8320117B3A4 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (180, N'000005', N'ĐẬU HỦ SỐT THỊT CUA', 70000, 2, 14, 0, CAST(0x0000A8320118088C AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (181, N'000006', N'ĐẬU HỦ CHIÊN GIÒN-XÃ', 40000, 2, 14, 0, CAST(0x0000A832011851E6 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (182, N'000007', N'ĐẬU HỦ TRỨNG CHIÊN', 50000, 2, 14, 0, CAST(0x0000A83201188454 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (183, N'000008', N'KHOAI NÔN CHIÊN NƯỚC MẮN', 45000, 2, 14, 0, CAST(0x0000A8320118BBA9 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (184, N'000009', N'KHOAI TÂY CHIÊN', 50000, 2, 14, 0, CAST(0x0000A8320118E222 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (185, N'000010', N'KHỔ QUA CHÀ BÔNG', 40000, 2, 14, 0, CAST(0x0000A832011902B0 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (186, N'000011', N'KHÔ MỰC CHÁY TIÊU-CHIÊN NƯỚC MẮM', 70000, 2, 14, 0, CAST(0x0000A83201192B36 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (187, N'000012', N'CHẢ CÁ THÁC LÁC CHIÊN-HẤP CẢI XANH', 80000, 2, 14, 0, CAST(0x0000A8320119543E AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (188, N'000013', N'BẮP BÒ TẨM MẮM NHỈ', 90000, 2, 14, 0, CAST(0x0000A83201197830 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (189, N'000014', N'CƠM CHÁY KHO QUẸT', 70000, 2, 14, 0, CAST(0x0000A83201199975 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (190, N'000015', N'CƠM CHÁY BA KHÍA', 70000, 2, 14, 0, CAST(0x0000A8320119B3D3 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (191, N'000016', N'CƠM CHÁY CÁ HEO KHO', 140000, 2, 14, 0, CAST(0x0000A8320119DCD7 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (192, N'000017', N'NGŨ TRỨNG HẤP TRUNG QUA', 70000, 2, 15, 0, CAST(0x0000A832011A0244 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (193, N'000018', N'BẮP BÊ MUỐI KIM CHI', 90000, 2, 15, 0, CAST(0x0000A832011A2CBF AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (194, N'000019', N'CƠM CHÁY THỊT BA CHỈ', 90000, 2, 15, 0, CAST(0x0000A832011A4620 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (195, N'000020', N'TRỨNG GÀ TRE RANG MUỐI', 10000, 20, 15, 0, CAST(0x0000A832011AB480 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (196, N'000021', N'ĐẬU HỦ TỨ XUYÊN', 60000, 2, 15, 0, CAST(0x0000A832011AD920 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (197, N'000022', N'ĐẬU HỦ GIẤY BẠC', 80000, 2, 15, 0, CAST(0x0000A832011B1732 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (198, N'000023', N'ĐẬU HỦ TOKYO', 60000, 2, 15, 0, CAST(0x0000A832011B3885 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (199, N'000024', N'GIÒ HEO PHILIPIN', 130000, 2, 16, 0, CAST(0x0000A832011B7B72 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (200, N'000025', N'VỊT NƯỚNG TRUNG HOA', 100000, 2, 16, 0, CAST(0x0000A832011EB7BE AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (201, N'000026', N'MỰC LÁ QUAY SỐT X.O', 110000, 2, 16, 0, CAST(0x0000A832011F0A73 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (202, N'000027', N'GÀ NƯỚNG ĐẤT SÉT', 350000, 2, 16, 0, CAST(0x0000A832011F3958 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (203, N'000028', N'GÓI BÒ VƯỜN THƯƠNG', 90000, 2, 16, 0, CAST(0x0000A832011F6A4E AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (204, N'000029', N'GÀ TRE NƯỚNG ĐẤT SÉT', 300000, 2, 16, 0, CAST(0x0000A832011FBCB4 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (205, N'000030', N'CHUỘT CỐNG NHUM QUAY LU', 180000, 21, 16, 0, CAST(0x0000A83201206F78 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (206, N'000031', N'GÀ LÊN MĂM', 350000, 2, 16, 0, CAST(0x0000A83201209E0D AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (207, N'000032', N'VŨ NỮ CHIÊN NƯỚC MẮM', 70000, 2, 17, 0, CAST(0x0000A8320120E4BB AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (208, N'000033', N'VŨ NỮ CHIÊN GIÒN', 70000, 2, 17, 0, CAST(0x0000A832012114F6 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (209, N'000034', N'VŨ NỮ CHÁY TIÊU-XÀO TỎI', 70000, 2, 17, 0, CAST(0x0000A83201219BE4 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (210, N'000035', N'KHÔ MỰC', 70000, 2, 17, 0, CAST(0x0000A8320121CBF4 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (211, N'000036', N'KHÔ CÁ ĐUỐI', 50000, 2, 17, 0, CAST(0x0000A8320121E73D AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (212, N'000037', N'KHÔ CÁ KÈO', 50000, 2, 17, 0, CAST(0x0000A8320121FC71 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (213, N'000038', N'KHÔ CÁ KHOAI SỌ', 50000, 2, 17, 0, CAST(0x0000A83201222326 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (214, N'000039', N'KHÔ CÁ TRA PHÒNG BIỂN HỒ', 50000, 2, 17, 0, CAST(0x0000A83201225109 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (215, N'000040', N'GỎI BỒN BỒN HẢI SẢN-TÔM THỊT', 75000, 2, 18, 0, CAST(0x0000A83201229B08 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (216, N'000041', N'GỎI NGÓ SEN HẢI SẢN-TÔM THỊT', 75000, 2, 18, 0, CAST(0x0000A8320122EC70 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (217, N'000042', N'GỎI MỰC THÁI LAN', 75000, 2, 18, 0, CAST(0x0000A832012318F8 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (218, N'000043', N'GỎI BÒ BÓP THẤU', 75000, 2, 18, 0, CAST(0x0000A83201235511 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (219, N'000044', N'GỎI BÒ TÁI CHANH', 75000, 2, 18, 0, CAST(0x0000A8320123709B AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (220, N'000045', N'GỎI CHÂN GÀ RÚT XƯƠNG', 75000, 2, 18, 0, CAST(0x0000A83201239019 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (221, N'000046', N'GỎI ẾCH XÉ PHAI', 75000, 2, 18, 0, CAST(0x0000A8320123B012 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (222, N'000047', N'GỎI XOAI KHÔ SẶC-XẦU ĐÂU', 75000, 2, 18, 0, CAST(0x0000A8320123DF25 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (223, N'000048', N'GỎI KHÔ LẮC TRỘN XOÀI-SẦU ĐÂU', 75000, 2, 18, 0, CAST(0x0000A83201240ABE AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (224, N'000049', N'CẢI MẦM TRỘN THỊT BÒ', 75000, 2, 18, 0, CAST(0x0000A83201242BEB AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (225, N'000050', N'CẢI MẦM CÁ MÒI', 60000, 2, 18, 0, CAST(0x0000A832012452E8 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (226, N'000051', N'RAU CÀNG CUA TRỘN BÒ', 75000, 2, 18, 0, CAST(0x0000A83201247E02 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (227, N'000052', N'RAU CÀNG CUA TRỘN CÁ MÒI', 60000, 2, 18, 0, CAST(0x0000A8320124B926 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (228, N'000053', N'RAU CÀNG CUA TRỨNG', 45000, 2, 18, 0, CAST(0x0000A8320124D910 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (229, N'000054', N'RAU XÀ LÁCH DẦU DẤM', 45000, 2, 18, 0, CAST(0x0000A83201250ABE AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (230, N'000055', N'GỎI ĐIÊN ĐIỂN XÀO TÉP', 75000, 2, 18, 0, CAST(0x0000A832012534C8 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (231, N'000056', N'SOUP HẢI SẢN', 20000, 4, 19, 0, CAST(0x0000A8320125A2C1 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (232, N'000057', N'SOUP MĂNG TÂY CUA', 20000, 4, 19, 0, CAST(0x0000A8320125BF23 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (233, N'000058', N'SOUP GÀ XÉ', 20000, 4, 19, 0, CAST(0x0000A8320125DA38 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (234, N'000059', N'SÚP CUA', 20000, 4, 19, 0, CAST(0x0000A8320125F975 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[CF_HangHoa] OFF
SET IDENTITY_INSERT [dbo].[CF_HoaDon] ON 

INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10210, CAST(0x0000A83201050505 AS DateTime), NULL, 402, 0, NULL, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10211, CAST(0x0000A83201051A3D AS DateTime), NULL, 403, 0, NULL, 3, 300000, 0, 300000, 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10212, CAST(0x0000A83201167486 AS DateTime), NULL, 420, 0, NULL, 3, 180000, 0, 180000, 0, 0, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[CF_HoaDon] OFF
SET IDENTITY_INSERT [dbo].[CF_KeyCode] ON 

INSERT [dbo].[CF_KeyCode] ([ID], [GetKey], [NgayKichHoat], [ThoiGianSuDung]) VALUES (4, N'40c532a6a2c1a5fcf671a53c69ea51298d8b9e', CAST(0x0000A83200FE1C2F AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_KeyCode] OFF
SET IDENTITY_INSERT [dbo].[CF_KhuVuc] ON 

INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu]) VALUES (25, N'0001', N'A', N'Khu A', 0, 1, CAST(0x0000A83201028691 AS DateTime), 0, N'')
INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu]) VALUES (26, N'0002', N'B', N'Khu B', 0, 1, CAST(0x0000A8320107B5C9 AS DateTime), 0, N'')
INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu]) VALUES (27, N'0003', N'L', N'Khu Lầu', 0, 1, CAST(0x0000A8320108D361 AS DateTime), 0, N'')
INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu]) VALUES (28, N'0004', N'PL', N'Khu P_Lạnh', 0, 1, CAST(0x0000A832010943AD AS DateTime), 0, N'')
SET IDENTITY_INSERT [dbo].[CF_KhuVuc] OFF
SET IDENTITY_INSERT [dbo].[CF_LichSuThayDoiGia] ON 

INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [IDHangHoa], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (21, 1, 176, 80000, 84000, CAST(0x0000A83201152006 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [IDHangHoa], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (22, 1, 176, 84000, 80000, CAST(0x0000A83201154AAF AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_LichSuThayDoiGia] OFF
SET IDENTITY_INSERT [dbo].[CF_LichSuTruyCap] ON 

INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2546, 1, 2, 2, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8320100855B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2547, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8320100D735 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2548, 1, 1, 1, N'Chi nhánh', N'Cập nhật chi nhánh: 1', CAST(0x0000A8320101032B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2549, 1, 1, 1, N'Quản lý người dùng', N'Thêm người dùng: Võ Thị Quỳnh Như', CAST(0x0000A8320101B571 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2550, 1, 1, 1, N'Quản lý người dùng', N'Thêm người dùng: Võ Thị Quỳnh Như', CAST(0x0000A8320101F079 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2551, 1, 1, 1, N'Quản lý người dùng', N'Cập nhật người dùng: 2', CAST(0x0000A832010216B0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2552, 1, 1, 1, N'Quản lý khu vực', N'Thêm khu vực: Khu A', CAST(0x0000A832010286A3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2553, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 1', CAST(0x0000A8320102A94D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2554, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 2', CAST(0x0000A8320102A969 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2555, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 3', CAST(0x0000A8320102A98A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2556, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 4', CAST(0x0000A8320102A9A6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2557, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 5', CAST(0x0000A8320102A9C7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2558, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 6', CAST(0x0000A8320102A9E8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2559, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 7', CAST(0x0000A8320102AA04 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2560, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 8', CAST(0x0000A8320102AA25 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2561, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 9', CAST(0x0000A8320102AA41 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2562, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 10', CAST(0x0000A8320102AA67 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2563, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 11', CAST(0x0000A8320102AA87 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2564, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 12', CAST(0x0000A8320102AAA3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2565, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: A - 13', CAST(0x0000A8320102AAC4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2566, 1, 1, 1, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Khai Vị', CAST(0x0000A83201031657 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2567, 1, 1, 1, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Đặt Biệt', CAST(0x0000A832010322EB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2568, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: Khô Bò Gác Bếp', CAST(0x0000A83201036DF5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2569, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: Ngủ Trứng Hấp Trung Hoa', CAST(0x0000A83201039A82 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2570, 1, 1, 1, N'Quản lý nguyên liệu', N'Thêm nguyên liệu: Cua', CAST(0x0000A8320103F52E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2571, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A832010442B0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2572, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8320104C103 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2573, 1, 1, 4, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8320106F5A8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2574, 1, 1, 4, N'Quản lý khu vực', N'Thêm khu vực: Khu B', CAST(0x0000A8320107B5DC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2575, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: B - 1', CAST(0x0000A83201089AF2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2576, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: B - 2', CAST(0x0000A83201089B13 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2577, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: B - 3', CAST(0x0000A83201089B2E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2578, 1, 1, 4, N'Quản lý khu vực', N'Thêm khu vực: Khu Lầu', CAST(0x0000A8320108D374 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2579, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 1', CAST(0x0000A8320108F799 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2580, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 2', CAST(0x0000A8320108F7B9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2581, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 3', CAST(0x0000A8320108F7D6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2582, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 4', CAST(0x0000A8320108F7F6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2583, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 5', CAST(0x0000A8320108F817 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2584, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 6', CAST(0x0000A8320108F833 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2585, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 7', CAST(0x0000A8320108F854 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2586, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 8', CAST(0x0000A8320108F875 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2587, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 9', CAST(0x0000A8320108F891 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2588, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: L - 10', CAST(0x0000A8320108F8B2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2589, 1, 1, 4, N'Quản lý khu vực', N'Thêm khu vực: Khu P_Lạnh', CAST(0x0000A832010943C4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2590, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: PL - 1', CAST(0x0000A83201096089 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2591, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: PL - 2', CAST(0x0000A832010960A9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2592, 1, 1, 4, N'Quản lý bàn', N'Thêm bàn: PL - 3', CAST(0x0000A832010960C5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2593, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A832010979A8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2594, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Món Đặc Sản Vườn Thương', CAST(0x0000A8320109E829 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2595, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: KHÔ', CAST(0x0000A8320109F663 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2596, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Gỏi', CAST(0x0000A832010A0371 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2597, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Soup', CAST(0x0000A832010A1542 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2598, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Các Món Rau Qủa', CAST(0x0000A832010A357C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2599, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: RĂNG MỰC', CAST(0x0000A832010A4EDD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2600, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁC MÓN GÀ', CAST(0x0000A832010A634C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2601, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: ẾCH', CAST(0x0000A832010A7331 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2602, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: THỎ', CAST(0x0000A832010A7A26 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2603, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CU ĐẤT', CAST(0x0000A832010A8B58 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2604, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: NGHÊU', CAST(0x0000A832010A9951 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2605, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: ỐC BƯU', CAST(0x0000A832010AA4FA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2606, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: ỐC MỠ', CAST(0x0000A832010AB9FF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2607, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ TẦM', CAST(0x0000A832010ACAA0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2608, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ TAI TƯỢNG', CAST(0x0000A832010AD9A8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2609, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ CHẼM', CAST(0x0000A832010AFED4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2610, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ CHẠNH LẤU', CAST(0x0000A832010B11CC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2611, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ LĂNG', CAST(0x0000A832010B1F20 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2612, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ ĐUỐI', CAST(0x0000A832010B2AAA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2613, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ MÈ HÔI _ CÁ ÉC', CAST(0x0000A832010B55BB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2614, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ TRỨNG', CAST(0x0000A832010B638E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2615, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ DA BÒ', CAST(0x0000A832010B70DE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2616, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ SAPA', CAST(0x0000A832010B7B4E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2617, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ LÓC', CAST(0x0000A832010B84CE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2618, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁ THÁC LÁC RÚT XƯƠNG', CAST(0x0000A832010BABFE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2619, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁC MÓN CƠM', CAST(0x0000A832010BB936 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2620, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁC MÓN MÌ_BÚN_MIẾNG', CAST(0x0000A832010BEE83 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2621, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁC MÓN CHAY', CAST(0x0000A832010BFA0D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2622, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CHÁO', CAST(0x0000A832010C0915 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2623, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CÁC MÓN LẨU', CAST(0x0000A832010C152A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2624, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: CUA(THỊT-GẠCH-CỐM_GHẸ', CAST(0x0000A832010CC4C9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2625, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: ỐC HƯƠNG', CAST(0x0000A832010CD58E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2626, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: SAM', CAST(0x0000A832010CDD81 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2627, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: SÒ ĐIỆP', CAST(0x0000A832010CE6E5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2628, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: SÒ TỘ', CAST(0x0000A832010CF176 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2629, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: SÒ HUYẾT', CAST(0x0000A832010D01F0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2630, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: MỰC LÁ-MỰC ỐNG-MỰC TRỨNG', CAST(0x0000A832010D288A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2631, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: MỰC 1 NẮNG', CAST(0x0000A832010D39B7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2632, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: BẠCH TUỘC', CAST(0x0000A832010D4A8F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2633, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: TÔM SÚ', CAST(0x0000A832010D56C1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2634, 1, 1, 4, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: TÔM CÀNG XANH', CAST(0x0000A832010D6648 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2635, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8320114B781 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2636, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A8320114D5A5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2637, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A8320114F202 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2638, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 176', CAST(0x0000A83201152022 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2639, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 176', CAST(0x0000A83201154ACC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2640, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83201164C7B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2641, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: CHẢ GIÒ VƯỜN THƯƠNG', CAST(0x0000A832011778CB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2642, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: BÌ MẮM LÁ SUNG', CAST(0x0000A8320117B3B7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2643, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: ĐẬU HỦ SỐT THỊT CUA', CAST(0x0000A8320118089F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2644, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: ĐẬU HỦ CHIÊN GIÒN-XÃ', CAST(0x0000A832011851FE AS DateTime))
GO
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2645, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: ĐẬU HỦ TRỨNG CHIÊN', CAST(0x0000A83201188467 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2646, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHOAI NÔN CHIÊN NƯỚC MẮN', CAST(0x0000A8320118BBBC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2647, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHOAI TÂY CHIÊN', CAST(0x0000A8320118E234 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2648, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHỔ QUA CHÀ BÔNG', CAST(0x0000A832011902C3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2649, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHÔ MỰC CHÁY TIÊU-CHIÊN NƯỚC MẮM', CAST(0x0000A83201192B48 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2650, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: CHẢ CÁ THÁC LÁC CHIÊN-HẤP CẢI XANH', CAST(0x0000A83201195456 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2651, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: BẮP BÒ TẨM MẮM NHỈ', CAST(0x0000A83201197847 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2652, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: CƠM CHÁY KHO QUẸT', CAST(0x0000A83201199988 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2653, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: CƠM CHÁY BA KHÍA', CAST(0x0000A8320119B3EA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2654, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: CƠM CHÁY CÁ HEO KHO', CAST(0x0000A8320119DCEF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2655, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: NGŨ TRỨNG HẤP TRUNG QUA', CAST(0x0000A832011A025B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2656, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: BẮP BÊ MUỐI KIM CHI', CAST(0x0000A832011A2CD2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2657, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: CƠM CHÁY THỊT BA CHỈ', CAST(0x0000A832011A4638 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2658, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: TRỨNG GÀ TRE RANG MUỐI', CAST(0x0000A832011A67A7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2659, 1, 1, 1, N'Đơn vị tính', N'Thêm đơn vị tính: TRỨNG', CAST(0x0000A832011A975F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2660, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 195', CAST(0x0000A832011AB49C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2661, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: ĐẬU HỦ TỨ XUYÊN', CAST(0x0000A832011AD932 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2662, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: ĐẬU HỦ GIẤY BẠC', CAST(0x0000A832011B1745 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2663, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: ĐẬU HỦ TOKYO', CAST(0x0000A832011B3898 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2664, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm hàng hóa: GIÒ HEO PHILIPIN', CAST(0x0000A832011B7B85 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2665, 1, 1, 4, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A832011E5C30 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2666, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: VỊT NƯỚNG TRUNG HOA', CAST(0x0000A832011EB7D5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2667, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: MỰC LÁ QUAY SỐT X.O', CAST(0x0000A832011F0A8A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2668, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ NƯỚNG ĐẤT SÉT', CAST(0x0000A832011F3974 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2669, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÓI BÒ VƯỜN THƯƠNG', CAST(0x0000A832011F6A61 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2670, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TRE NƯỚNG ĐẤT SÉT', CAST(0x0000A832011FBCC7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2671, 1, 1, 4, N'Đơn vị tính', N'Thêm đơn vị tính: CON', CAST(0x0000A83201201891 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2672, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CHUỘT CỐNG NHUM QUAY LU', CAST(0x0000A83201206F90 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2673, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ LÊN MĂM', CAST(0x0000A83201209E25 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2674, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: VŨ NỮ CHIÊN NƯỚC MẮM', CAST(0x0000A8320120E4CD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2675, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: VŨ NỮ CHIÊN GIÒN', CAST(0x0000A83201211508 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2676, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: VŨ NỮ CHÁY TIÊU-XÀO TỎI', CAST(0x0000A83201219BF6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2677, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHÔ MỰC', CAST(0x0000A8320121CC07 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2678, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHÔ CÁ ĐUỐI', CAST(0x0000A8320121E750 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2679, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHÔ CÁ KÈO', CAST(0x0000A8320121FC84 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2680, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHÔ CÁ KHOAI SỌ', CAST(0x0000A83201222339 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2681, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHÔ CÁ TRA PHÒNG BIỂN HỒ', CAST(0x0000A8320122511C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2682, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI BỒN BỒN HẢI SẢN-TÔM THỊT', CAST(0x0000A83201229B1A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2683, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI NGÓ SEN HẢI SẢN-TÔM THỊT', CAST(0x0000A8320122EC87 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2684, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI MỰC THÁI LAN', CAST(0x0000A8320123190B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2685, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI BÒ BÓP THẤU', CAST(0x0000A83201235523 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2686, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI BÒ TÁI CHANH', CAST(0x0000A832012370B2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2687, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI CHÂN GÀ RÚT XƯƠNG', CAST(0x0000A8320123902C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2688, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI ẾCH XÉ PHAI', CAST(0x0000A8320123B029 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2689, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI XOAI KHÔ SẶC-XẦU ĐÂU', CAST(0x0000A8320123DF3C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2690, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI KHÔ LẮC TRỘN XOÀI-SẦU ĐÂU', CAST(0x0000A83201240AD6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2691, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CẢI MẦM TRỘN THỊT BÒ', CAST(0x0000A83201242C03 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2692, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CẢI MẦM CÁ MÒI', CAST(0x0000A832012452FA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2693, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: RAU CÀNG CUA TRỘN BÒ', CAST(0x0000A83201247E15 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2694, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: RAU CÀNG CUA TRỘN CÁ MÒI', CAST(0x0000A8320124B93E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2695, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: RAU CÀNG CUA TRỨNG', CAST(0x0000A8320124D928 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2696, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: RAU XÀ LÁCH DẦU DẤM', CAST(0x0000A83201250AD1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2697, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GỎI ĐIÊN ĐIỂN XÀO TÉP', CAST(0x0000A832012534DB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2698, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: SOUP HẢI SẢN', CAST(0x0000A8320125A2D9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2699, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: SOUP MĂNG TÂY CUA', CAST(0x0000A8320125BF36 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2700, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: SOUP GÀ XÉ', CAST(0x0000A8320125DA4A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2701, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: SÚP CUA', CAST(0x0000A8320125F988 AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_LichSuTruyCap] OFF
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] ON 

INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (1, N'0000001', N'Hệ Thống', N'ADMIN', N'01674799994', N'4e159eca79339d7142cfb140ab21454425874a85', N'luanhv@gpm.vn', 1, CAST(0x0000A7FA00B10340 AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (2, N'0000002', N'A Quang', N'ANHQUAN', N'1212121', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'aquan', 1, CAST(0x0000A8320102169E AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (3, N'0000003', N'Võ Thị Quỳnh Như', N'QUYNHNHU', N'0868154664', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'quynhnhu@vuonthuong.site', 2, CAST(0x0000A8320101B55E AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (4, N'0000004', N'Võ Thị Quỳnh Như', N'QUANTRI', N'01212', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'quynhnhu@vuonthuong.site', 1, CAST(0x0000A8320101F062 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[CF_NguyenLieu] ON 

INSERT [dbo].[CF_NguyenLieu] ([ID], [MaNguyenLieu], [TenNguyenLieu], [NhaCungCap], [GhiChu], [NgayCapNhat], [DaXoa], [IDDonViTinh], [GiaMua], [GiaBan], [TrangThai]) VALUES (56, N'0000001', N'Cua', N'', N'', CAST(0x0000A83201164C63 AS DateTime), 0, 6, 100000, 180000, 1)
SET IDENTITY_INSERT [dbo].[CF_NguyenLieu] OFF
SET IDENTITY_INSERT [dbo].[CF_NhomHangHoa] ON 

INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (14, N'0001', N'Khai Vị', N'', CAST(0x0000A83201031644 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (15, N'0002', N'Đặt Biệt', N'', CAST(0x0000A832010322D9 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (16, N'0003', N'Món Đặc Sản Vườn Thương', N'', CAST(0x0000A8320109E816 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (17, N'0004', N'KHÔ', N'', CAST(0x0000A8320109F650 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (18, N'0005', N'Gỏi', N'', CAST(0x0000A832010A035F AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (19, N'0006', N'Soup', N'', CAST(0x0000A832010A152F AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (20, N'0007', N'Các Món Rau Qủa', N'', CAST(0x0000A832010A3565 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (21, N'0008', N'RĂNG MỰC', N'', CAST(0x0000A832010A4ECA AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (22, N'0009', N'CÁC MÓN GÀ', N'', CAST(0x0000A832010A633A AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (23, N'0010', N'ẾCH', N'', CAST(0x0000A832010A731E AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (24, N'0011', N'THỎ', N'', CAST(0x0000A832010A7A14 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (25, N'0012', N'CU ĐẤT', N'', CAST(0x0000A832010A8B45 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (26, N'0013', N'NGHÊU', N'', CAST(0x0000A832010A993E AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (27, N'0014', N'ỐC BƯU', N'', CAST(0x0000A832010AA4E7 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (28, N'0015', N'ỐC MỠ', N'', CAST(0x0000A832010AB9ED AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (29, N'0016', N'CÁ TẦM', N'', CAST(0x0000A832010ACA8D AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (30, N'0017', N'CÁ TAI TƯỢNG', N'', CAST(0x0000A832010AD996 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (31, N'0018', N'CÁ CHẼM', N'', CAST(0x0000A832010AFEC1 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (32, N'0019', N'CÁ CHẠNH LẤU', N'', CAST(0x0000A832010B11BA AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (33, N'0020', N'CÁ LĂNG', N'', CAST(0x0000A832010B1F0E AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (34, N'0021', N'CÁ ĐUỐI', N'', CAST(0x0000A832010B2A97 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (35, N'0022', N'CÁ MÈ HÔI _ CÁ ÉC', N'', CAST(0x0000A832010B55A8 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (36, N'0023', N'CÁ TRỨNG', N'', CAST(0x0000A832010B637B AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (37, N'0024', N'CÁ DA BÒ', N'', CAST(0x0000A832010B70CB AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (38, N'0025', N'CÁ SAPA', N'', CAST(0x0000A832010B7B3B AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (39, N'0026', N'CÁ LÓC', N'', CAST(0x0000A832010B84BB AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (40, N'0027', N'CÁ THÁC LÁC RÚT XƯƠNG', N'', CAST(0x0000A832010BABE6 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (41, N'0028', N'CÁC MÓN CƠM', N'', CAST(0x0000A832010BB923 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (42, N'0029', N'CÁC MÓN MÌ_BÚN_MIẾNG', N'', CAST(0x0000A832010BEE71 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (43, N'0030', N'CÁC MÓN CHAY', N'', CAST(0x0000A832010BF9FA AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (44, N'0031', N'CHÁO', N'', CAST(0x0000A832010C0902 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (45, N'0032', N'CÁC MÓN LẨU', N'', CAST(0x0000A832010C1518 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (46, N'0033', N'CUA(THỊT-GẠCH-CỐM_GHẸ', N'', CAST(0x0000A832010CC4B6 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (47, N'0034', N'ỐC HƯƠNG', N'', CAST(0x0000A832010CD57B AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (48, N'0035', N'SAM', N'', CAST(0x0000A832010CDD6E AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (49, N'0036', N'SÒ ĐIỆP', N'', CAST(0x0000A832010CE6D2 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (50, N'0037', N'SÒ TỘ', N'', CAST(0x0000A832010CF163 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (51, N'0038', N'SÒ HUYẾT', N'', CAST(0x0000A832010D01DE AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (52, N'0039', N'MỰC LÁ-MỰC ỐNG-MỰC TRỨNG', N'', CAST(0x0000A832010D2877 AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (53, N'0040', N'MỰC 1 NẮNG', N'', CAST(0x0000A832010D399F AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (54, N'0041', N'BẠCH TUỘC', N'', CAST(0x0000A832010D4A7D AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (55, N'0042', N'TÔM SÚ', N'', CAST(0x0000A832010D56AE AS DateTime), 0)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa]) VALUES (56, N'0043', N'TÔM CÀNG XANH', N'', CAST(0x0000A832010D6635 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_NhomHangHoa] OFF
SET IDENTITY_INSERT [dbo].[CF_NhomNguoiDung] ON 

INSERT [dbo].[CF_NhomNguoiDung] ([ID], [MaNhom], [TenNhom], [NgayCapNhat]) VALUES (1, N'0001', N'Nhóm Quản Trị', CAST(0x0000A7D000BBE141 AS DateTime))
INSERT [dbo].[CF_NhomNguoiDung] ([ID], [MaNhom], [TenNhom], [NgayCapNhat]) VALUES (2, N'0002', N'Nhóm Thu Ngân', CAST(0x0000A7D000BBEA6E AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_NhomNguoiDung] OFF
SET IDENTITY_INSERT [dbo].[CF_TonKho] ON 

INSERT [dbo].[CF_TonKho] ([ID], [IDNguyenLieu], [IDChiNhanh], [TrongLuong], [MaNguyenLieu], [DaXoa]) VALUES (63, 56, 1, 0, N'0000001', 0)
SET IDENTITY_INSERT [dbo].[CF_TonKho] OFF
SET IDENTITY_INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ON 

INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (1, N'SỬ DỤNG NỘI BỘ')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (2, N'HÀNG HẾT HẠN SỬ DỤNG')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (3, N'HÀNG HƯ')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (4, N'MẤT TRỘM')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (5, N'QUÀ TẶNG NHÂN VIÊN')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (6, N'QUÀ TẶNG KHÁCH HÀNG 2%')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (7, N'CHƯƠNG TRÌNH KHUYẾN MÃI 3 THÁNG')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (8, N'ĐIỀU CHỈNH TỒN KHO')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (9, N'HÀNG KHUYẾN MÃI CHUYỂN SANG HÀNG BÁN')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (10, N'HÀNG BÁN CHUYỂN SANG HÀNG KHUYẾN MÃI')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (11, N'KHÁC')
SET IDENTITY_INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] OFF
SET IDENTITY_INSERT [dbo].[GPM_KhachHang] ON 

INSERT [dbo].[GPM_KhachHang] ([ID], [TenKhachHang]) VALUES (1, N'Khách lẻ')
SET IDENTITY_INSERT [dbo].[GPM_KhachHang] OFF
SET IDENTITY_INSERT [dbo].[GPM_LichSuKho] ON 

INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (1, 0, 52, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A8260107166A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (2, 0, 53, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A82601071A89 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (3, 0, 53, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A82601081BDF AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (4, 0, 52, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A82601082141 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (5, 0, 54, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A828008E2EFB AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (6, 0, 54, 1, -1, -2, N'Bán hàng lẻ', CAST(0x0000A82800A10FC2 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (7, 0, 53, 1, -1, -2, N'Bán hàng lẻ', CAST(0x0000A82800A10FCB AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (8, 0, 52, 1, -1, -2, N'Bán hàng lẻ', CAST(0x0000A82800A1FD10 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (9, 0, 54, 1, -2, -3, N'Bán hàng lẻ', CAST(0x0000A82800A1FD19 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (10, 0, 52, 1, -2, -3, N'Bán hàng lẻ', CAST(0x0000A82800A47290 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (11, 0, 54, 1, -3, -4, N'Bán hàng lẻ', CAST(0x0000A82800A472AC AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (12, 0, 52, 1, -3, -4, N'Bán hàng lẻ', CAST(0x0000A82800A752A5 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (13, 0, 54, 1, -4, -5, N'Bán hàng lẻ', CAST(0x0000A82800A752B3 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (14, 0, 53, 1, -2, -3, N'Bán hàng lẻ', CAST(0x0000A82800A752BC AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (15, 0, 52, 1, -4, -5, N'Bán hàng lẻ', CAST(0x0000A82800A78A5D AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (16, 0, 53, 1, -3, -4, N'Bán hàng lẻ', CAST(0x0000A82800A78A66 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (17, 0, 54, 1, -5, -6, N'Bán hàng lẻ', CAST(0x0000A82800A78A74 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (18, 0, 52, 1, -5, -6, N'Bán hàng lẻ', CAST(0x0000A82800A82613 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (19, 0, 53, 1, -4, -5, N'Bán hàng lẻ', CAST(0x0000A82800A82622 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (20, 0, 54, 1, -6, -7, N'Bán hàng lẻ', CAST(0x0000A82800A8262F AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (21, 0, 52, 1, -6, -7, N'Bán hàng lẻ', CAST(0x0000A82800A87367 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (22, 0, 53, 1, -5, -6, N'Bán hàng lẻ', CAST(0x0000A82800A87375 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (23, 0, 53, 1, -6, -7, N'Bán hàng lẻ', CAST(0x0000A82800A88D21 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (24, 0, 53, 1, -7, -8, N'Bán hàng lẻ', CAST(0x0000A82800AA221F AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (25, 0, 54, 1, -7, -8, N'Bán hàng lẻ', CAST(0x0000A82800AA2228 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (26, 0, 52, 1, -7, -8, N'Bán hàng lẻ', CAST(0x0000A82800AA2236 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (27, 0, 52, 1, -8, -9, N'Bán hàng lẻ', CAST(0x0000A82800AA87BA AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (28, 0, 53, 1, -8, -9, N'Bán hàng lẻ', CAST(0x0000A82800AA87E8 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (29, 0, 52, 1, -9, -10, N'Bán hàng lẻ', CAST(0x0000A82800AE577A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (30, 0, 53, 1, -9, -10, N'Bán hàng lẻ', CAST(0x0000A82800AE5788 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (31, 0, 52, 1, -10, -11, N'Bán hàng lẻ', CAST(0x0000A82800B7D134 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (32, 0, 52, 1, -11, -12, N'Bán hàng lẻ', CAST(0x0000A82800B81ACB AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (33, 0, 52, 1, -12, -13, N'Bán hàng lẻ', CAST(0x0000A82800B92387 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (34, 0, 54, 1, -8, -9, N'Bán hàng lẻ', CAST(0x0000A82800B923A3 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (35, 0, 52, 1, -13, -14, N'Bán hàng lẻ', CAST(0x0000A82800B98455 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (36, 0, 53, 1, -10, -11, N'Bán hàng lẻ', CAST(0x0000A82800B98464 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (37, 0, 53, 1, -11, -12, N'Bán hàng lẻ', CAST(0x0000A82A00909B66 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (38, 0, 54, 1, -9, -10, N'Bán hàng lẻ', CAST(0x0000A82A00909B6A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (39, 0, 53, 1, -12, -13, N'Bán hàng lẻ', CAST(0x0000A82A00917C37 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (40, 0, 54, 1, -10, -11, N'Bán hàng lẻ', CAST(0x0000A82A00917C40 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (41, 0, 52, 1, -14, -15, N'Bán hàng lẻ', CAST(0x0000A82A0092260B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (42, 0, 53, 1, -13, -14, N'Bán hàng lẻ', CAST(0x0000A82A00922615 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (43, 0, 54, 1, -11, -12, N'Bán hàng lẻ', CAST(0x0000A82A0092261E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (44, 0, 52, 1, -15, -16, N'Bán hàng lẻ', CAST(0x0000A82A00929C0E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (45, 0, 53, 1, -14, -15, N'Bán hàng lẻ', CAST(0x0000A82A00929C18 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (46, 0, 54, 1, -12, -13, N'Bán hàng lẻ', CAST(0x0000A82A00929C21 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (47, 0, 52, 1, -16, -17, N'Bán hàng lẻ', CAST(0x0000A82A009356FD AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (48, 0, 53, 1, -15, -16, N'Bán hàng lẻ', CAST(0x0000A82A00935706 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (49, 0, 54, 1, -13, -14, N'Bán hàng lẻ', CAST(0x0000A82A0093570B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (50, 0, 52, 1, -17, -18, N'Bán hàng lẻ', CAST(0x0000A82A0098F37C AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (51, 0, 53, 1, -16, -17, N'Bán hàng lẻ', CAST(0x0000A82A0098F38B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (52, 0, 54, 1, -14, -15, N'Bán hàng lẻ', CAST(0x0000A82A0098F394 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (53, 0, 53, 1, -17, -18, N'Bán hàng lẻ', CAST(0x0000A82A00A0B24C AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (54, 0, 53, 1, -18, -19, N'Bán hàng lẻ', CAST(0x0000A82A00A2E283 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (55, 0, 54, 1, -15, -16, N'Bán hàng lẻ', CAST(0x0000A82A00A2E28C AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (56, 0, 52, 1, -18, -19, N'Bán hàng lẻ', CAST(0x0000A82B0099BF1A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (57, 0, 53, 1, -19, -25, N'Bán hàng lẻ', CAST(0x0000A82B0099BF28 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (58, 0, 54, 1, -16, -17, N'Bán hàng lẻ', CAST(0x0000A82B0099BF36 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (59, 0, 52, 1, -19, -20, N'Bán hàng lẻ', CAST(0x0000A82B009A211E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (60, 0, 53, 1, -25, -28, N'Bán hàng lẻ', CAST(0x0000A82B009A2127 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (61, 0, 52, 1, -20, -21, N'Bán hàng lẻ', CAST(0x0000A82B009A79D5 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (62, 0, 53, 1, -28, -29, N'Bán hàng lẻ', CAST(0x0000A82B009A79E3 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (63, 0, 54, 1, -17, -18, N'Bán hàng lẻ', CAST(0x0000A82B009A79F5 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (64, 0, 52, 1, -21, -22, N'Bán hàng lẻ', CAST(0x0000A82B009B1A28 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (65, 0, 53, 1, -29, -30, N'Bán hàng lẻ', CAST(0x0000A82B009B1A32 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (66, 0, 54, 1, -18, -19, N'Bán hàng lẻ', CAST(0x0000A82B009B1A40 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (67, 0, 52, 1, -22, -23, N'Bán hàng lẻ', CAST(0x0000A82B009B7AB1 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (68, 0, 53, 1, -30, -31, N'Bán hàng lẻ', CAST(0x0000A82B009B7ABA AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (69, 0, 52, 1, -23, -24, N'Bán hàng lẻ', CAST(0x0000A82B009B927A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (70, 0, 52, 1, -24, -25, N'Bán hàng lẻ', CAST(0x0000A82B009C1F81 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (71, 0, 54, 1, -19, -20, N'Bán hàng lẻ', CAST(0x0000A82B009C1F8B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (72, 0, 52, 1, -25, -26, N'Bán hàng lẻ', CAST(0x0000A82B009C418B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (73, 0, 53, 1, -31, -32, N'Bán hàng lẻ', CAST(0x0000A82B009C4194 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (74, 1, 54, 1, -15, -155, N'Thêm đơn hàng', CAST(0x0000A82C0093C68E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (75, 1, 14, 1, 10, 1010, N'Thêm đơn hàng', CAST(0x0000A82C0093C6AA AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (76, 1, 13, 1, 6, 12, N'Thêm đơn hàng', CAST(0x0000A82C0097722E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (77, 1, 54, 1, -9, -3, N'Thêm đơn hàng', CAST(0x0000A82C0097724A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (78, 1, 13, 1, 6, 0, N'Phiếu xuất khác', CAST(0x0000A82C009A0731 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (79, 1, 17, 1, 0, -1, N'Phiếu xuất khác', CAST(0x0000A82C009A0748 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[GPM_LichSuKho] OFF
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([ID], [TieuDe], [CongTy], [DiaChi], [SDT], [TinhGio], [TestDuLieu], [ReportBill], [MayIn]) VALUES (1, N'', N'Ẩm Thực Quán Vườn Thương', N'Đề Thám, P.Bình Khánh, TPLX - AG', N'02966.534.634', 0, N'd9fd598e4ea9bc5deef68ae5fe1299871bebb033', 80, N'XP-80C')
SET IDENTITY_INSERT [dbo].[Setting] OFF
ALTER TABLE [dbo].[CF_Ban] ADD  CONSTRAINT [DF_CF_Ban_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_Ban] ADD  CONSTRAINT [DF_CF_Ban_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_ChiNhanh] ADD  CONSTRAINT [DF_CF_ChiNhanh_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_DonGia]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_ThanhToan]  DEFAULT ((0)) FOR [ThanhToan]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_DonGia]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_TrongLuong]  DEFAULT ((0)) FOR [TrongLuong]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon_Temp] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_Temp_TrongLuong]  DEFAULT ((0)) FOR [TrongLuong]
GO
ALTER TABLE [dbo].[CF_DonViTinh] ADD  CONSTRAINT [DF_CF_DonViTinh_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_Gio] ADD  CONSTRAINT [DF_CF_Gio_TyLe]  DEFAULT ((0)) FOR [TyLe]
GO
ALTER TABLE [dbo].[CF_HangHoa] ADD  CONSTRAINT [DF_CF_HangHoa_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_GiamGia]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_KhachCanTra]  DEFAULT ((0)) FOR [KhachCanTra]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_KhachThanhToan]  DEFAULT ((0)) FOR [KhachThanhToan]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TienThua]  DEFAULT ((0)) FOR [TienThua]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TienGio]  DEFAULT ((0)) FOR [TienGio]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TrangThaiKetCa]  DEFAULT ((0)) FOR [TrangThaiKetCa]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_LanIn]  DEFAULT ((0)) FOR [LanIn]
GO
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TongTienSauCa]  DEFAULT ((0)) FOR [TongTienSauCa]
GO
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TienGio]  DEFAULT ((0)) FOR [TienGio]
GO
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TienNuoc]  DEFAULT ((0)) FOR [TienNuoc]
GO
ALTER TABLE [dbo].[CF_KeyCode] ADD  CONSTRAINT [DF_CF_KeyCode_ThoiGianSuDung]  DEFAULT ((0)) FOR [ThoiGianSuDung]
GO
ALTER TABLE [dbo].[CF_KhuVuc] ADD  CONSTRAINT [DF_CF_KhuVuc_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_KiemKho] ADD  CONSTRAINT [DF_CF_KiemKho_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_KiemKho_ChiTiet] ADD  CONSTRAINT [DF_CF_KiemKho_ChiTiet_ThucTe]  DEFAULT ((0)) FOR [ThucTe]
GO
ALTER TABLE [dbo].[CF_KiemKho_ChiTiet_Temp] ADD  CONSTRAINT [DF_CF_KiemKho_ChiTiet_Temp_ThucTe]  DEFAULT ((0)) FOR [ThucTe]
GO
ALTER TABLE [dbo].[CF_NguoiDung] ADD  CONSTRAINT [DF_CF_NguoiDung_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_GiaMua]  DEFAULT ((0)) FOR [GiaMua]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_GiaBan]  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_NhaCungCap] ADD  CONSTRAINT [DF_CF_NhaCungCap_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_NhaCungCap] ADD  CONSTRAINT [DF_CF_NhaCungCap_CongNo]  DEFAULT ((0)) FOR [CongNo]
GO
ALTER TABLE [dbo].[CF_NhomHangHoa] ADD  CONSTRAINT [DF_CF_NhomHangHoa_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_PhieuXuatKhac] ADD  CONSTRAINT [DF_CF_PhieuXuatKhac_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet] ADD  CONSTRAINT [DF_CF_PhieuXuatKhac_ChiTiet_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp] ADD  CONSTRAINT [DF_CF_PhieuXuatKhac_ChiTiet_Temp_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_TonKho] ADD  CONSTRAINT [DF_CF_TonKho_TrongLuong]  DEFAULT ((0)) FOR [TrongLuong]
GO
ALTER TABLE [dbo].[CF_TonKho] ADD  CONSTRAINT [DF_CF_TonKho_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[GPM_ChiTietHoaDon] ADD  CONSTRAINT [DF_GPM_ChiTietHoaDon_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[GPM_HoaDon] ADD  CONSTRAINT [DF_GPM_HoaDon_SoLanIn]  DEFAULT ((0)) FOR [SoLanIn]
GO
ALTER TABLE [dbo].[GPM_HoaDon] ADD  CONSTRAINT [DF_GPM_HoaDon_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[GPM_HoaDon] ADD  CONSTRAINT [DF_GPM_HoaDon_TyLeGiam]  DEFAULT ((0)) FOR [TyLeGiam]
GO
ALTER TABLE [dbo].[GPM_LichSuKho] ADD  CONSTRAINT [DF_GPM_LichSuKho_IDKho]  DEFAULT ((0)) FOR [IDKho]
GO
ALTER TABLE [dbo].[GPM_LichSuKho] ADD  CONSTRAINT [DF_GPM_LichSuKho_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [DF_Setting_TinhGio]  DEFAULT ((0)) FOR [TinhGio]
GO
