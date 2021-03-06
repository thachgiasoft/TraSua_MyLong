USE [gpm_codeVuonThuong]
GO
/****** Object:  Table [dbo].[CF_Ban]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_BangGia]    Script Date: 07/12/2017 1:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_BangGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenBangGia] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_BangGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiNhanh]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietBangGia]    Script Date: 07/12/2017 1:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietBangGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBangGia] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_ChiTietBangGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietCongNo]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietGio]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietHoaDon]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietHoaDon_Temp]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_DatBan]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_DonDatHang]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet_Temp]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_DonViTinh]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_Gio]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_HangHoa]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet_Temp]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_HoaDon]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_KetCa]    Script Date: 07/12/2017 1:47:26 PM ******/
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
	[TongTien] [float] NULL,
	[GiamGia] [float] NULL,
 CONSTRAINT [PK_CF_KetCa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KeyCode]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_KhuVuc]    Script Date: 07/12/2017 1:47:26 PM ******/
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
	[IDBangGia] [int] NULL,
 CONSTRAINT [PK_CF_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KiemKho]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet_Temp]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_LichSuKho]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_LichSuThayDoiGia]    Script Date: 07/12/2017 1:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_LichSuThayDoiGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [int] NULL,
	[MaHang] [nvarchar](50) NULL,
	[TenHang] [nvarchar](50) NULL,
	[IDDVT] [int] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[NgayThayDoi] [datetime] NULL,
 CONSTRAINT [PK_GPM_LichSuThayDoiGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_LichSuTruyCap]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_NguoiDung]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_NguyenLieu]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_NguyenLieu_Barcode]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_NhaCungCap]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_NhomHangHoa]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_NhomNguoiDung]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_PhieuXuatKhac]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_TonKho]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[CF_TrangThaiPhieuXuatKhac]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[GPM_ChiTietHoaDon]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[GPM_HoaDon]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[GPM_KhachHang]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[GPM_LichSuKho]    Script Date: 07/12/2017 1:47:26 PM ******/
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
/****** Object:  Table [dbo].[Setting]    Script Date: 07/12/2017 1:47:26 PM ******/
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
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (393, N'000002', N'A - 2', 25, 2, CAST(0x0000A8320102A960 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (394, N'000003', N'A - 3', 25, 0, CAST(0x0000A8320102A980 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (395, N'000004', N'A - 4', 25, 0, CAST(0x0000A8320102A9A1 AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (396, N'000005', N'A - 5', 25, 0, CAST(0x0000A8320102A9BD AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (397, N'000006', N'A - 6', 25, 0, CAST(0x0000A8320102A9DE AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (398, N'000007', N'A - 7', 25, 0, CAST(0x0000A8320102A9FF AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (399, N'000008', N'A - 8', 25, 0, CAST(0x0000A8320102AA1B AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (400, N'000009', N'A - 9', 25, 0, CAST(0x0000A8320102AA3C AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (401, N'000010', N'A - 10', 25, 0, CAST(0x0000A8320102AA5D AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (402, N'000011', N'A - 11', 25, 0, CAST(0x0000A8320102AA7E AS DateTime), 1, 0)
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (403, N'000012', N'A - 12', 25, 0, CAST(0x0000A8320102AA9A AS DateTime), 1, 0)
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
INSERT [dbo].[CF_Ban] ([ID], [MaBan], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa]) VALUES (420, N'000003', N'PL - 3', 28, 0, CAST(0x0000A832010960C1 AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[CF_Ban] OFF
SET IDENTITY_INSERT [dbo].[CF_BangGia] ON 

INSERT [dbo].[CF_BangGia] ([ID], [TenBangGia], [NgayCapNhat], [DaXoa]) VALUES (1, N'Bảng Giá Thường', CAST(0x0000A83300A9ECDA AS DateTime), 0)
INSERT [dbo].[CF_BangGia] ([ID], [TenBangGia], [NgayCapNhat], [DaXoa]) VALUES (2, N'Bảng Giá Phòng Lạnh', CAST(0x0000A83300AB8EA0 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_BangGia] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] ON 

INSERT [dbo].[CF_ChiNhanh] ([ID], [MaChiNhanh], [TenChiNhanh], [DienThoai], [DiaChi], [NgayMo], [NgayCapNhat], [DaXoa]) VALUES (1, N'0001', N'Vườn Thương', N'0123456789', N'Long Xuyên ', CAST(0x0000A7D000000000 AS DateTime), CAST(0x0000A83201010319 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiTietBangGia] ON 

INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (1, 1, 176, 85000, 85000, 1)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (2, 1, 177, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (3, 1, 178, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (4, 1, 179, 90000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (5, 1, 180, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (6, 1, 181, 40000, 40000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (7, 1, 182, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (8, 1, 183, 45000, 45000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (9, 1, 184, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (10, 1, 185, 40000, 40000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (11, 1, 186, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (12, 1, 187, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (13, 1, 188, 90000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (14, 1, 189, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (15, 1, 190, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (16, 1, 191, 140000, 140000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (17, 1, 192, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (18, 1, 193, 90000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (19, 1, 194, 90000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (20, 1, 195, 10000, 10000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (21, 1, 196, 60000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (22, 1, 197, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (23, 1, 198, 60000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (24, 1, 199, 130000, 130000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (25, 1, 200, 100000, 100000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (26, 1, 201, 110000, 110000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (27, 1, 202, 350000, 350000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (28, 1, 203, 90000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (29, 1, 204, 300000, 300000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (30, 1, 205, 180000, 180000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (31, 1, 206, 350000, 350000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (32, 1, 207, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (33, 1, 208, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (34, 1, 209, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (35, 1, 210, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (36, 1, 211, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (37, 1, 212, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (38, 1, 213, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (39, 1, 214, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (40, 1, 215, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (41, 1, 216, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (42, 1, 217, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (43, 1, 218, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (44, 1, 219, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (45, 1, 220, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (46, 1, 221, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (47, 1, 222, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (48, 1, 223, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (49, 1, 224, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (50, 1, 225, 60000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (51, 1, 226, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (52, 1, 227, 60000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (53, 1, 228, 45000, 45000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (54, 1, 229, 45000, 45000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (55, 1, 230, 75000, 75000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (56, 1, 231, 20000, 20000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (57, 1, 232, 20000, 20000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (58, 1, 233, 20000, 20000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (59, 1, 234, 20000, 20000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (60, 1, 235, 5000, 5000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (61, 1, 236, 15000, 15000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (62, 1, 237, 7000, 7000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (63, 1, 238, 45000, 45000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (64, 1, 239, 35000, 35000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (65, 1, 240, 45000, 45000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (66, 1, 241, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (67, 1, 242, 40000, 40000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (68, 1, 243, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (69, 1, 244, 35000, 35000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (70, 1, 245, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (71, 1, 246, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (72, 1, 247, 40000, 40000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (73, 1, 248, 40000, 40000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (74, 1, 249, 40000, 40000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (75, 1, 250, 50000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (76, 1, 251, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (77, 1, 252, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (78, 1, 253, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (79, 1, 254, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (80, 1, 255, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (81, 1, 256, 280000, 280000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (82, 1, 257, 280000, 280000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (83, 1, 258, 280000, 280000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (84, 1, 259, 280000, 280000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (85, 1, 260, 280000, 280000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (86, 1, 261, 300000, 300000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (87, 1, 262, 300000, 300000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (88, 1, 263, 280000, 280000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (89, 1, 264, 280000, 280000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (90, 1, 265, 200000, 200000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (91, 1, 266, 200000, 200000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (92, 1, 267, 250000, 250000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (93, 1, 268, 195000, 195000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (94, 1, 269, 195, 195, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (95, 1, 270, 195000, 195000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (96, 1, 271, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (97, 1, 272, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (98, 1, 273, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (99, 1, 274, 80000, 80000, 0)
GO
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (100, 1, 275, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (101, 1, 276, 70000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (102, 1, 277, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (103, 1, 278, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (104, 1, 279, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (105, 1, 280, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (106, 1, 281, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (107, 1, 282, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (108, 1, 283, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (109, 1, 284, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (110, 1, 285, 80000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (111, 1, 286, 120000, 120000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (112, 1, 287, 120000, 120000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (113, 1, 288, 90000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (114, 1, 289, 120000, 120000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (115, 2, 176, 85000, 100000, 1)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (116, 2, 177, 70000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (117, 2, 178, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (118, 2, 179, 90000, 100000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (119, 2, 180, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (120, 2, 181, 40000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (121, 2, 182, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (122, 2, 183, 45000, 55000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (123, 2, 184, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (124, 2, 185, 40000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (125, 2, 186, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (126, 2, 187, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (127, 2, 188, 90000, 100000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (128, 2, 189, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (129, 2, 190, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (130, 2, 191, 140000, 150000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (131, 2, 192, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (132, 2, 193, 90000, 100000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (133, 2, 194, 90000, 100000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (134, 2, 195, 10000, 20000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (135, 2, 196, 60000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (136, 2, 197, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (137, 2, 198, 60000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (138, 2, 199, 130000, 140000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (139, 2, 200, 100000, 110000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (140, 2, 201, 110000, 120000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (141, 2, 202, 350000, 360000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (142, 2, 203, 90000, 100000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (143, 2, 204, 300000, 310000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (144, 2, 205, 180000, 190000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (145, 2, 206, 350000, 360000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (146, 2, 207, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (147, 2, 208, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (148, 2, 209, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (149, 2, 210, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (150, 2, 211, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (151, 2, 212, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (152, 2, 213, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (153, 2, 214, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (154, 2, 215, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (155, 2, 216, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (156, 2, 217, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (157, 2, 218, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (158, 2, 219, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (159, 2, 220, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (160, 2, 221, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (161, 2, 222, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (162, 2, 223, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (163, 2, 224, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (164, 2, 225, 60000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (165, 2, 226, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (166, 2, 227, 60000, 70000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (167, 2, 228, 45000, 55000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (168, 2, 229, 45000, 55000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (169, 2, 230, 75000, 85000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (170, 2, 231, 20000, 30000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (171, 2, 232, 20000, 30000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (172, 2, 233, 20000, 30000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (173, 2, 234, 20000, 30000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (174, 2, 235, 5000, 15000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (175, 2, 236, 15000, 25000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (176, 2, 237, 7000, 17000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (177, 2, 238, 45000, 55000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (178, 2, 239, 35000, 45000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (179, 2, 240, 45000, 55000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (180, 2, 241, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (181, 2, 242, 40000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (182, 2, 243, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (183, 2, 244, 35000, 45000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (184, 2, 245, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (185, 2, 246, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (186, 2, 247, 40000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (187, 2, 248, 40000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (188, 2, 249, 40000, 50000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (189, 2, 250, 50000, 60000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (190, 2, 251, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (191, 2, 252, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (192, 2, 253, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (193, 2, 254, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (194, 2, 255, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (195, 2, 256, 280000, 290000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (196, 2, 257, 280000, 290000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (197, 2, 258, 280000, 290000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (198, 2, 259, 280000, 290000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (199, 2, 260, 280000, 290000, 0)
GO
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (200, 2, 261, 300000, 310000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (201, 2, 262, 300000, 310000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (202, 2, 263, 280000, 290000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (203, 2, 264, 280000, 290000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (204, 2, 265, 200000, 210000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (205, 2, 266, 200000, 210000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (206, 2, 267, 250000, 260000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (207, 2, 268, 195000, 205000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (208, 2, 269, 195, 10195, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (209, 2, 270, 195000, 205000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (210, 2, 271, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (211, 2, 272, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (212, 2, 273, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (213, 2, 274, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (214, 2, 275, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (215, 2, 276, 70000, 80000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (216, 2, 277, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (217, 2, 278, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (218, 2, 279, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (219, 2, 280, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (220, 2, 281, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (221, 2, 282, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (222, 2, 283, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (223, 2, 284, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (224, 2, 285, 80000, 90000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (225, 2, 286, 120000, 130000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (226, 2, 287, 120000, 130000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (227, 2, 288, 90000, 100000, 0)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa]) VALUES (228, 2, 289, 120000, 130000, 0)
SET IDENTITY_INSERT [dbo].[CF_ChiTietBangGia] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiTietHoaDon] ON 

INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9431, 10222, 211, 1, 50000, 50000, 392, N'000036', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9432, 10222, 213, 1, 50000, 50000, 392, N'000038', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9433, 10222, 186, 1, 70000, 70000, 392, N'000011', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9434, 10223, 210, 2, 70000, 140000, 392, N'000035', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9435, 10223, 185, 1, 40000, 40000, 392, N'000010', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9436, 10224, 178, 2, 70000, 140000, 403, N'000003', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9437, 10224, 252, 2, 70000, 140000, 403, N'000077', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9438, 10225, 196, 2, 60000, 120000, 400, N'000021', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9439, 10225, 182, 2, 50000, 100000, 400, N'000007', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9440, 10226, 249, 2, 40000, 80000, 395, N'000074', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9441, 10227, 246, 1, 90000, 90000, 420, N'000071', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9442, 10227, 210, 1, 80000, 80000, 420, N'000035', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9443, 10228, 246, 1, 80000, 80000, 401, N'000071', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9444, 10228, 264, 1, 280000, 280000, 401, N'000089', 21, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9445, 10235, 243, 1, 80000, 80000, 400, N'000068', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9446, 10234, 246, 1, 80000, 80000, 400, N'000071', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9447, 10234, 238, 1, 45000, 45000, 400, N'000063', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9448, 10232, 207, 1, 70000, 70000, 396, N'000032', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9449, 10232, 280, 1, 80000, 80000, 396, N'000105', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9450, 10232, 243, 1, 80000, 80000, 396, N'000068', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (9451, 10232, 251, 1, 70000, 70000, 396, N'000076', 2, 0)
SET IDENTITY_INSERT [dbo].[CF_ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiTietHoaDon_Temp] ON 

INSERT [dbo].[CF_ChiTietHoaDon_Temp] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (16067, 10231, 246, 2, 80000, 160000, 393, N'000071', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon_Temp] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (16068, 10231, 238, 2, 45000, 90000, 393, N'000063', 2, 0)
INSERT [dbo].[CF_ChiTietHoaDon_Temp] ([ID], [IDHoaDon], [IDHangHoa], [SoLuong], [DonGia], [ThanhTien], [IDBan], [MaHangHoa], [IDDonViTinh], [TrongLuong]) VALUES (16069, 10231, 251, 2, 70000, 140000, 393, N'000076', 2, 0)
SET IDENTITY_INSERT [dbo].[CF_ChiTietHoaDon_Temp] OFF
SET IDENTITY_INSERT [dbo].[CF_DonDatHang] ON 

INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (62, 1, N'1-22112017-035615', 1, CAST(0x0000A83300000000 AS DateTime), 100000, N'', CAST(0x0000A8330106C07B AS DateTime), 11, 0)
INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (63, 1, N'1-22112017-035717', 1, CAST(0x0000A83300000000 AS DateTime), 1050000, N'', CAST(0x0000A83301070994 AS DateTime), 11, 0)
INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (64, 1, N'1-22112017-041637', 1, CAST(0x0000A83300000000 AS DateTime), 1050000, N'', CAST(0x0000A833010C5EB8 AS DateTime), 11, 0)
INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (65, 1, N'1-22112017-041718', 1, CAST(0x0000A83300000000 AS DateTime), 1050000, N'', CAST(0x0000A833010C7EB6 AS DateTime), 11, 0)
INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (66, 1, N'1-22112017-042352', 1, CAST(0x0000A83300000000 AS DateTime), 1050000, N'', CAST(0x0000A833010E49A0 AS DateTime), 11, 0)
INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (67, 1, N'1-22112017-042441', 1, CAST(0x0000A83300000000 AS DateTime), 1050000, N'', CAST(0x0000A833010E8BDB AS DateTime), 11, 0)
SET IDENTITY_INSERT [dbo].[CF_DonDatHang] OFF
SET IDENTITY_INSERT [dbo].[CF_DonDatHang_ChiTiet] ON 

INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (69, 62, 56, N'0000001', 6, 1, 100000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (70, 63, 56, N'0000001', 6, 10.5, 100000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (71, 64, 56, N'0000001', 6, 10.5, 100000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (72, 65, 56, N'0000001', 6, 10.5, 100000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (73, 66, 56, N'0000001', 6, 10.5, 100000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (74, 67, 56, N'0000001', 6, 10.5, 100000, NULL)
SET IDENTITY_INSERT [dbo].[CF_DonDatHang_ChiTiet] OFF
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

INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (176, N'000001', N'Khô Bò Gác Bếp', 85000, 2, 14, 1, CAST(0x0000A83300E5B39E AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (177, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 70000, 2, 15, 0, CAST(0x0000A83300EFFAC0 AS DateTime), N'')
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
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (235, N'000060', N'RAU LUỘC THẬP CẨM', 5000, 2, 20, 0, CAST(0x0000A83300979D84 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (236, N'000061', N'KHO QUẸT', 15000, 2, 20, 0, CAST(0x0000A8330097BAB9 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (237, N'000062', N'TRỨNG LUỘC', 7000, 20, 20, 0, CAST(0x0000A8330097F474 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (238, N'000063', N'CẢI RỔ LUỘC-XÀO', 45000, 2, 20, 0, CAST(0x0000A833009827DA AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (239, N'000064', N'RAU MUỐN XÀO TỎI-CHAO', 35000, 2, 20, 0, CAST(0x0000A83300985EF8 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (240, N'000065', N'BÔNG TỎI XÀO DẦU HÀO', 45000, 2, 20, 0, CAST(0x0000A8330098A2F0 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (241, N'000066', N'BÔNG TỎI XÀO BÒ', 80000, 2, 20, 0, CAST(0x0000A8330098B7FA AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (242, N'000067', N'CẢI THÌA XÀO TỎI-DẦU HÀO', 40000, 2, 20, 0, CAST(0x0000A8330098F836 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (243, N'000068', N'CẢI THÌA XÀO BÒ', 80000, 2, 20, 0, CAST(0x0000A833009931EC AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (244, N'000069', N'CÀ TÍM NƯỚNG MỞ HÀNH', 35000, 2, 20, 0, CAST(0x0000A83300996DA7 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (245, N'000070', N'CÀ TÍM NƯỚNG THỊT BẦM', 50000, 2, 20, 0, CAST(0x0000A833009993B9 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (246, N'000071', N'BÍ NỤ XÀO BÒ', 80000, 2, 20, 0, CAST(0x0000A8330099AD3F AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (247, N'000072', N'BÔNG HẸ XÀO TỎI', 40000, 2, 20, 0, CAST(0x0000A8330099C346 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (248, N'000073', N'KHỔ QUA XÀO TRỨNG', 40000, 2, 20, 0, CAST(0x0000A8330099DF37 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (249, N'000074', N'BÔNG CẢI XÀO TỎI', 40000, 2, 20, 0, CAST(0x0000A8330099F611 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (250, N'000075', N'BÍ NỤ XÀO TỎI', 50000, 2, 20, 0, CAST(0x0000A833009A11CF AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (251, N'000076', N'CHIÊN GIÒN', 70000, 2, 21, 0, CAST(0x0000A833009A2D59 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (252, N'000077', N'CHIÊN NƯỚC MẮM', 70000, 2, 21, 0, CAST(0x0000A833009A4B56 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (253, N'000078', N'XÀO TỎI', 70000, 2, 21, 0, CAST(0x0000A833009A5FBD AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (254, N'000079', N'XÀO CỦ HÀNH', 70000, 2, 21, 0, CAST(0x0000A833009A80D3 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (255, N'000080', N'XÀO XA TẾ', 70000, 2, 21, 0, CAST(0x0000A833009AB971 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (256, N'000081', N'GÀ TA QUAY LU', 280000, 21, 22, 0, CAST(0x0000A833009B28EA AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (257, N'000082', N'GÀ TA HẤP MẮM NHỈ', 280000, 21, 22, 0, CAST(0x0000A833009B4987 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (258, N'000083', N'GÀ TA HẤP HÀNH TRÊN 1,1 KG', 280000, 21, 22, 0, CAST(0x0000A833009BC4B3 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (259, N'000084', N'GÀ TA HẤP LÁ TRÚC', 280000, 21, 22, 0, CAST(0x0000A833009BED26 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (260, N'000085', N'GÀ TA HẤP TỎI', 280000, 21, 22, 0, CAST(0x0000A833009C07EB AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (261, N'000086', N'GÀ TA NẤU CHÁO TRỘN GỎI', 300000, 21, 22, 0, CAST(0x0000A833009C2E6D AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (262, N'000087', N'GÀ TA RANG MUỐI', 300000, 21, 22, 0, CAST(0x0000A833009C4E4E AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (263, N'000088', N'GÀ TA NƯỚNG MUỐI ỚT-CHIÊN NƯỚC MẮM', 280000, 21, 22, 0, CAST(0x0000A833009C8A61 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (264, N'000089', N'GÀ TA XỐI MỠ (BÁNH BAO-XÔI CHIÊN) ', 280000, 21, 22, 0, CAST(0x0000A833009DDF90 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (265, N'000090', N'GÀ TRE RANG MUỐI', 200000, 21, 22, 0, CAST(0x0000A833009E0F27 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (266, N'000091', N'GÀ TRE NƯỚNG MUỐI ỚT', 200000, 21, 22, 0, CAST(0x0000A833009E4CBF AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (267, N'000092', N'GÀ TRE NẤU CHÁO TRỘN GỎI', 250000, 21, 22, 0, CAST(0x0000A833009E77E3 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (268, N'000093', N'GÀ CHỌI HẦM XÃ', 195000, 6, 22, 0, CAST(0x0000A833009EB624 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (269, N'000094', N'GÀ CHỌI NƯỚNG MUỐI XÃ', 195, 6, 22, 0, CAST(0x0000A833009F00CC AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (270, N'000095', N'GÀ CHỌI XÀO CỐI', 195000, 21, 22, 0, CAST(0x0000A833009F33B7 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (271, N'000096', N'CÁNH GÀ RÚT XƯƠNG NHỒI THỊT CHIÊN GIÒN', 80000, 2, 22, 0, CAST(0x0000A833009F7E0A AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (272, N'000096', N'CÁNH GÀ RÚT XƯƠNG NHỒI THỊT CHIÊN GIÒN', 80000, 2, 22, 0, CAST(0x0000A833009F8813 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (273, N'000096', N'CÁNH GÀ RÚT XƯƠNG NHỒI THỊT CHIÊN GIÒN', 80000, 2, 22, 0, CAST(0x0000A833009F9193 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (274, N'000099', N'CÁNH GÀ CHIÊN BƠ', 80000, 2, 22, 0, CAST(0x0000A833009FF67D AS DateTime), N'')
GO
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (275, N'000100', N'CÁNH GÀ CHIÊN NƯỚC MẮM', 70000, 2, 22, 0, CAST(0x0000A83300A0166C AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (276, N'000101', N'CÁNH GÀ NƯỚNG MUỐI ỚT', 70000, 2, 22, 0, CAST(0x0000A83300A03D83 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (277, N'000102', N'ẾCH NÚP LÙM', 80000, 2, 23, 0, CAST(0x0000A83300A0B797 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (278, N'000103', N'ẾCH CHIÊN BƠ', 80000, 2, 23, 0, CAST(0x0000A83300A0D710 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (279, N'000104', N'ẾCH CHIÊN GIÒN-NƯỚC MẮM', 80000, 2, 23, 0, CAST(0x0000A83300A0FC17 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (280, N'000105', N'ẾCH NƯỚNG MUỐI ỚT', 80000, 2, 23, 0, CAST(0x0000A83300A11D65 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (281, N'000106', N'ẾCH SA PÔ', 80000, 2, 23, 0, CAST(0x0000A83300A13588 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (282, N'000107', N'ẾCH NƯỚNG MỌI', 80000, 2, 23, 0, CAST(0x0000A83300A14D0F AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (283, N'000108', N'ẾCH XÀO XÃ ỚT', 80000, 2, 23, 0, CAST(0x0000A83300A16FE2 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (284, N'000109', N'ẾCH XÀO LĂN', 80000, 2, 23, 0, CAST(0x0000A83300A19E31 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (285, N'000110', N'ẾCH CHÁY XÃ', 80000, 2, 23, 0, CAST(0x0000A83300A1D025 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (286, N'000111', N'THỎ XÀO LĂN', 120000, 2, 24, 0, CAST(0x0000A83300A26959 AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (287, N'000112', N'RÔ TI', 120000, 2, 24, 0, CAST(0x0000A83300A28B5A AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (288, N'000113', N'NƯỚNG MUỐI ỚT', 90000, 2, 24, 0, CAST(0x0000A83300A2B5CB AS DateTime), N'')
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu]) VALUES (289, N'000114', N'KHÌA NƯỚC DỪA', 120000, 2, 24, 0, CAST(0x0000A83300A2FB81 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[CF_HangHoa] OFF
SET IDENTITY_INSERT [dbo].[CF_HoaDon] ON 

INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10222, CAST(0x0000A83800A60FFE AS DateTime), CAST(0x0000A83800A619F8 AS DateTime), 392, 1, NULL, 3, 170000, 0, 170000, 170000, 0, 0, 1, 0, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10223, CAST(0x0000A83800A8039D AS DateTime), CAST(0x0000A83800A82BE1 AS DateTime), 392, 1, NULL, 3, 180000, 0, 180000, 180000, 0, 0, 1, 0, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10224, CAST(0x0000A83800A83ABF AS DateTime), CAST(0x0000A83800A847F2 AS DateTime), 403, 1, NULL, 3, 280000, 80000, 200000, 200000, 0, 0, 1, 0, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10225, CAST(0x0000A83800A85819 AS DateTime), CAST(0x0000A83800A86303 AS DateTime), 400, 1, NULL, 3, 220000, 10, 198000, 198000, 0, 0, 1, 0, N'%')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10226, CAST(0x0000A83800A9939B AS DateTime), CAST(0x0000A83800A99CA2 AS DateTime), 395, 1, NULL, 3, 80000, 10000, 70000, 70000, 0, 0, 1, 0, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10227, CAST(0x0000A83800AF378A AS DateTime), CAST(0x0000A83800AF43F0 AS DateTime), 420, 1, NULL, 3, 170000, 70000, 100000, 100000, 0, 0, 1, 0, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10228, CAST(0x0000A83800AFF3E6 AS DateTime), CAST(0x0000A83800B0013B AS DateTime), 401, 1, NULL, 3, 360000, 10000, 350000, 350000, 0, 0, 1, 0, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10231, CAST(0x0000A84200DC7CB6 AS DateTime), NULL, 393, 0, NULL, 3, 390000, 0, 390000, 0, 0, 0, 0, 5, NULL)
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10232, CAST(0x0000A84200DC8D68 AS DateTime), CAST(0x0000A84200E214E7 AS DateTime), 396, 1, NULL, 3, 300000, 100000, 200000, 200000, 0, 0, 0, 3, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10234, CAST(0x0000A84200E1715B AS DateTime), CAST(0x0000A84200E19696 AS DateTime), 400, 1, NULL, 3, 125000, 5000, 120000, 120000, 0, 0, 1, 0, N'$')
INSERT [dbo].[CF_HoaDon] ([ID], [GioVao], [GioRa], [IDBan], [TrangThai], [MaHoaDon], [IDNhanVien], [TongTien], [GiamGia], [KhachCanTra], [KhachThanhToan], [TienThua], [TienGio], [TrangThaiKetCa], [LanIn], [HinhThucGiamGia]) VALUES (10235, CAST(0x0000A84200E17080 AS DateTime), CAST(0x0000A84200E17BDD AS DateTime), 400, 1, NULL, 3, 80000, 0, 80000, 80000, 80000, 0, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[CF_HoaDon] OFF
SET IDENTITY_INSERT [dbo].[CF_KetCa] ON 

INSERT [dbo].[CF_KetCa] ([ID], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTienSauCa], [IDNhanVien], [IDChiNhanh], [TongTien], [GiamGia]) VALUES (3, CAST(0x0000A83800A6197C AS DateTime), CAST(0x0000A83800A86240 AS DateTime), 748000, 3, 1, 850000, 102000)
INSERT [dbo].[CF_KetCa] ([ID], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTienSauCa], [IDNhanVien], [IDChiNhanh], [TongTien], [GiamGia]) VALUES (4, CAST(0x0000A83800A99C50 AS DateTime), CAST(0x0000A83800A99C50 AS DateTime), 70000, 3, 1, 80000, 10000)
INSERT [dbo].[CF_KetCa] ([ID], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTienSauCa], [IDNhanVien], [IDChiNhanh], [TongTien], [GiamGia]) VALUES (5, CAST(0x0000A83800AF4394 AS DateTime), CAST(0x0000A83800AF4394 AS DateTime), 100000, 3, 1, 170000, 70000)
INSERT [dbo].[CF_KetCa] ([ID], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTienSauCa], [IDNhanVien], [IDChiNhanh], [TongTien], [GiamGia]) VALUES (6, CAST(0x0000A84200E17B0C AS DateTime), CAST(0x0000A84200E19600 AS DateTime), 550000, 3, 1, 565000, 15000)
SET IDENTITY_INSERT [dbo].[CF_KetCa] OFF
SET IDENTITY_INSERT [dbo].[CF_KeyCode] ON 

INSERT [dbo].[CF_KeyCode] ([ID], [GetKey], [NgayKichHoat], [ThoiGianSuDung]) VALUES (9, N'd9fd598e4ea9bc5deef68ae5fe1299871bebb033', CAST(0x0000A83300D9DF74 AS DateTime), 0)
INSERT [dbo].[CF_KeyCode] ([ID], [GetKey], [NgayKichHoat], [ThoiGianSuDung]) VALUES (10, N'e5ce72b666eb46934459e9377dd6389c02cb9c0', CAST(0x0000A83300EB9889 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_KeyCode] OFF
SET IDENTITY_INSERT [dbo].[CF_KhuVuc] ON 

INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu], [IDBangGia]) VALUES (25, N'0001', N'A', N'Khu A', 0, 1, CAST(0x0000A83201028691 AS DateTime), 0, N'', 1)
INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu], [IDBangGia]) VALUES (26, N'0002', N'B', N'Khu B', 0, 1, CAST(0x0000A8320107B5C9 AS DateTime), 0, N'', 1)
INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu], [IDBangGia]) VALUES (27, N'0003', N'L', N'Khu Lầu', 0, 1, CAST(0x0000A8320108D361 AS DateTime), 0, N'', 1)
INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu], [IDBangGia]) VALUES (28, N'0004', N'PL', N'Khu P_Lạnh', 0, 1, CAST(0x0000A83300ABCC14 AS DateTime), 0, N'', 2)
SET IDENTITY_INSERT [dbo].[CF_KhuVuc] OFF
SET IDENTITY_INSERT [dbo].[CF_LichSuThayDoiGia] ON 

INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (1, 1, N'000001', N'Khô Bò Gác Bếp', 2, 85000, 88000, CAST(0x0000A83300E5A807 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (2, 1, N'000001', N'Khô Bò Gác Bếp', 2, 88000, 85000, CAST(0x0000A83300E5B395 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (3, 1, N'0000001', N'Cua', 6, 190000, 180000, CAST(0x0000A83300E7AD35 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (4, 1, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 2, 70000, 75000, CAST(0x0000A83300EA6B8B AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (5, 1, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 2, 75000, 70000, CAST(0x0000A83300EA76A4 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (6, 1, N'0000001', N'Cua', 6, 180000, 190000, CAST(0x0000A83300EA81C2 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (7, 1, N'0000001', N'Cua', 6, 190000, 180000, CAST(0x0000A83300EA8981 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (8, 1, N'000003', N'CHẢ GIÒ VƯỜN THƯƠNG', 2, 75000, 70000, CAST(0x0000A83300EFC6BB AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (9, 1, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 2, 70000, 71000, CAST(0x0000A83300EFF259 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (10, 1, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 2, 71000, 70000, CAST(0x0000A83300EFFAB7 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (11, 1, N'0000001', N'Cua', 6, 180000, 181000, CAST(0x0000A83300F00661 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (12, 1, N'0000001', N'Cua', 6, 181000, 180000, CAST(0x0000A83300F00EA7 AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (13, 1, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 2, 70000, 71000, CAST(0x0000A83300F025DA AS DateTime))
INSERT [dbo].[CF_LichSuThayDoiGia] ([ID], [IDNguoiDung], [MaHang], [TenHang], [IDDVT], [GiaCu], [GiaMoi], [NgayThayDoi]) VALUES (14, 1, N'000002', N'Ngủ Trứng Hấp Trung Hoa', 2, 71000, 70000, CAST(0x0000A83300F03168 AS DateTime))
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
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2702, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8330095FA14 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2703, 1, 1, 4, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300973DB3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2704, 1, 1, 4, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833009741C3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2705, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: RAU LUỘC THẬP CẨM', CAST(0x0000A83300979D9C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2706, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHO QUẸT', CAST(0x0000A8330097BAD0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2707, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: TRỨNG LUỘC', CAST(0x0000A8330097F495 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2708, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CẢI RỔ LUỘC-XÀO', CAST(0x0000A833009827F2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2709, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: RAU MUỐN XÀO TỎI-CHAO', CAST(0x0000A83300985F0B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2710, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: BÔNG TỎI XÀO DẦU HÀO', CAST(0x0000A8330098A30C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2711, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: BÔNG TỎI XÀO BÒ', CAST(0x0000A8330098B811 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2712, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CẢI THÌA XÀO TỎI-DẦU HÀO', CAST(0x0000A8330098F848 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2713, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CẢI THÌA XÀO BÒ', CAST(0x0000A833009931FF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2714, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CÀ TÍM NƯỚNG MỞ HÀNH', CAST(0x0000A83300996DBA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2715, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CÀ TÍM NƯỚNG THỊT BẦM', CAST(0x0000A833009993CB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2716, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: BÍ NỤ XÀO BÒ', CAST(0x0000A8330099AD56 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2717, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: BÔNG HẸ XÀO TỎI', CAST(0x0000A8330099C35D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2718, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHỔ QUA XÀO TRỨNG', CAST(0x0000A8330099DF4E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2719, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: BÔNG CẢI XÀO TỎI', CAST(0x0000A8330099F624 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2720, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: BÍ NỤ XÀO TỎI', CAST(0x0000A833009A11E1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2721, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CHIÊN GIÒN', CAST(0x0000A833009A2D74 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2722, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CHIÊN NƯỚC MẮM', CAST(0x0000A833009A4B69 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2723, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: XÀO TỎI', CAST(0x0000A833009A5FCF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2724, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: XÀO CỦ HÀNH', CAST(0x0000A833009A80E5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2725, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: XÀO XA TẾ', CAST(0x0000A833009AB984 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2726, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: QUAY LU', CAST(0x0000A833009AFDAA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2727, 1, 1, 4, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 256', CAST(0x0000A833009B28FD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2728, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA HẤP MẮM NHỈ', CAST(0x0000A833009B4999 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2729, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA HẤP HÀNH TRÊN 1,1 KG', CAST(0x0000A833009BC4CB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2730, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA HẤP LÁ TRÚC', CAST(0x0000A833009BED3D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2731, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA HẤP TỎI', CAST(0x0000A833009C07FE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2732, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA NẤU CHÁO TRỘN GỎI', CAST(0x0000A833009C2E89 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2733, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA RANG MUỐI', CAST(0x0000A833009C4E60 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2734, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA NƯỚNG MUỐI ỚT-CHIÊN NƯỚC MẮM', CAST(0x0000A833009C8A79 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2735, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833009CD867 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2736, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TA XỐI MỠ (BÁNH BAO-XÔI CHIÊN) ', CAST(0x0000A833009DDFA3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2737, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TRE RANG MUỐI', CAST(0x0000A833009E0F3A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2738, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TRE NƯỚNG MUỐI ỚT', CAST(0x0000A833009E4CD2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2739, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ TRE NẤU CHÁO TRỘN GỎI', CAST(0x0000A833009E77F6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2740, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ CHỌI HẦM XÃ', CAST(0x0000A833009EB63C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2741, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ CHỌI NƯỚNG MUỐI XÃ', CAST(0x0000A833009F00E3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2742, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: GÀ CHỌI XÀO CỐI', CAST(0x0000A833009F33CA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2746, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CÁNH GÀ CHIÊN BƠ', CAST(0x0000A833009FF68F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2747, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CÁNH GÀ CHIÊN NƯỚC MẮM', CAST(0x0000A83300A0167E AS DateTime))
GO
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2748, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: CÁNH GÀ NƯỚNG MUỐI ỚT', CAST(0x0000A83300A03D9B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2749, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH NÚP LÙM', CAST(0x0000A83300A0B7AA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2750, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH CHIÊN BƠ', CAST(0x0000A83300A0D723 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2751, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH CHIÊN GIÒN-NƯỚC MẮM', CAST(0x0000A83300A0FC2E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2752, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH NƯỚNG MUỐI ỚT', CAST(0x0000A83300A11D78 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2753, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH SA PÔ', CAST(0x0000A83300A1359A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2754, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH NƯỚNG MỌI', CAST(0x0000A83300A14D21 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2755, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH XÀO XÃ ỚT', CAST(0x0000A83300A16FFA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2756, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH XÀO LĂN', CAST(0x0000A83300A19E48 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2757, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: ẾCH CHÁY XÃ', CAST(0x0000A83300A1D041 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2758, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: THỎ XÀO LĂN', CAST(0x0000A83300A2696C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2759, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: RÔ TI', CAST(0x0000A83300A28B71 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2760, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: NƯỚNG MUỐI ỚT', CAST(0x0000A83300A2B5DE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2761, 1, 1, 4, N'Quản lý hàng hóa', N'Thêm hàng hóa: KHÌA NƯỚC DỪA', CAST(0x0000A83300A2FB94 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2762, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300A7023D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2763, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300A9BFB8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2764, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300AA72D4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2765, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300AB6EA3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2766, 1, 1, 1, N'Quản lý khu vực', N'Cập nhật khu vực: 28', CAST(0x0000A83300ABCC1D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2767, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300AC3435 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2768, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 176', CAST(0x0000A83300AC500A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2769, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300AEB9C8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2770, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300B39122 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2771, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300D99A6D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2772, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300D9E56D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2773, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300DD8291 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2774, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300DF1765 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2775, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300E0EF62 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2776, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300E1609E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2777, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E1882B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2778, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300E2455F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2779, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300E2EBFF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2780, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E33266 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2781, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E4A962 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2782, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E53889 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2783, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E597C9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2784, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 176', CAST(0x0000A83300E5A831 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2785, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 176', CAST(0x0000A83300E5B3BA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2786, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300E61D45 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2787, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E6593C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2788, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300E66ADA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2789, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300E673BB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2790, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300E68863 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2791, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300E6B701 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2792, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E73274 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2793, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E799FB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2794, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300E7AFB8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2795, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300E9690A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2796, 1, 1, 1, N'Quản lý hàng hóa', N'Xóa hàng hóa: 176', CAST(0x0000A83300E997E5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2797, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300E9C942 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2798, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300EA5C5E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2799, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 177', CAST(0x0000A83300EA6BBB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2800, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 177', CAST(0x0000A83300EA76CE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2801, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300EA81EC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2802, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300EA89B4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2803, 1, 1, 1, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300EBC565 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2804, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300EC1FD5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2805, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300EC2BA9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2806, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300ED52D4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2807, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300EDB658 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2808, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300EF11F3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2809, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300EF5819 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2810, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300EFA2B2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2811, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83300EFB9CE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2812, 1, 2, 3, N'Kết Ca', N'Nhân Viên Kết Ca Bán Hàng', CAST(0x0000A83300EFDF36 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2813, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 177', CAST(0x0000A83300EFF295 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2814, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 177', CAST(0x0000A83300EFFAEA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2815, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300F00699 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2816, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: Cua', CAST(0x0000A83300F00ED6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2817, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A83300F082C3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2818, 1, 1, 1, N'Bảng kê bán hàng', N'Xem bảng kê bán hàng', CAST(0x0000A83300F0B4CE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2819, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A83300F0C191 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2820, 1, 1, 1, N'Danh sách kiểm kho', N'Truy cập', CAST(0x0000A83300F0C8D2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2821, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300F18FDF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2822, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300F1C202 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2823, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300F22785 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2824, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A83300F22B12 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2825, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A83300F22EFE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2826, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300F26496 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2827, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83300F2FFC5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2828, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83301067438 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2829, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A83301067AEB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2830, 1, 1, 1, N'Nhà cung cấp', N'Thêm nhà cung cấp: A', CAST(0x0000A833010693BB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2831, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8330106988C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2832, 1, 1, 1, N'Thêm đơn hàng', N'Thêm đơn đặt hàng', CAST(0x0000A8330106C0BD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2833, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8330106C10D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2834, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A83301076D51 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2835, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833010982E7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2836, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A83301098950 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2837, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833010A4A65 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2838, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010A63D9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2839, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833010BA8B2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2840, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010BADD7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2841, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010BCFB2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2842, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833010C3214 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2843, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010C3950 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2844, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833010E33AC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2845, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010E38DA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2846, 1, 1, 1, N'Thêm đơn hàng', N'Thêm đơn đặt hàng', CAST(0x0000A833010E49C5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2847, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010E4A07 AS DateTime))
GO
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2848, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A833010E661E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2849, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010E7250 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2850, 1, 1, 1, N'Thêm đơn hàng', N'Thêm đơn đặt hàng', CAST(0x0000A833010E8BF7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2851, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010E8C3D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2852, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833010F39F4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2853, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A833010F48BF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2854, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010F4DE4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2855, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833010F5F6F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2856, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A833010F6740 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2857, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A833010FDF97 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2858, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A833010FE24D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2859, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A833010FEE20 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2860, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83301104CA1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2861, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A833011054DE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2862, 1, 1, 1, N'Phiếu xuất khác', N'Thêm phiếu xuất khác', CAST(0x0000A83301106F6B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2863, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A83301106FA8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2864, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8330114C355 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2865, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8330114C8B3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2866, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8330114CE49 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2867, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8330114E1C9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2868, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8330114F0F7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2869, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833011506A0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2870, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A83301151818 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2871, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A83301151FB6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2872, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A83301153EC0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2873, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83301158990 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2874, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A83301158D27 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2875, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8330115933B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2876, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A833011597A0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2877, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8330115B456 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2878, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8330115C156 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2879, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8330115C936 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2880, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83500F15B7C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2881, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83501064F65 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2882, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A83501066AB2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2883, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83501071E58 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2884, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A835010860CA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2885, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A835010A3BBA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2886, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A836008912BF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2887, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A836008950E4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2888, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8360089A1C5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2889, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8360089C985 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2890, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A836008A1668 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2891, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A836008A5AC7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2892, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A836008BB402 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2893, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A836008CE1EE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2894, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A836008D639B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2895, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A836008E7AF3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2896, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83600911CA6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2897, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8360092D517 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2898, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A836009D7B1C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2899, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83600B34B7A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2900, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83600B51881 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2901, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A83600B52DAB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2902, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83600B64C07 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2903, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83600BE3C92 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2904, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83600BE8705 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2905, 1, 1, 1, N'Bảng kê bán hàng', N'Xem bảng kê bán hàng', CAST(0x0000A83600BEEE59 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2906, 1, 1, 1, N'Bảng kê bán hàng', N'Xem bảng kê bán hàng', CAST(0x0000A83600BF0083 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2907, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A83600BF0E19 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2908, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A83600BF509B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2909, 1, 1, 1, N'Bảng kê bán hàng', N'Xem bảng kê bán hàng', CAST(0x0000A83600BF5972 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2910, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A83600BF94B8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2911, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A83600C0BB89 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2912, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A838009E8643 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2913, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800A5CB17 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2914, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800A6E198 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2915, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800A70C1C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2916, 1, 2, 3, N'Kết Ca', N'Nhân Viên Kết Ca Bán Hàng', CAST(0x0000A83800A86C46 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2917, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800A8D2ED AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2918, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800A98168 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2919, 1, 2, 3, N'Kết Ca', N'Nhân Viên Kết Ca Bán Hàng', CAST(0x0000A83800A9A3CB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2920, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800AD29F0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2921, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800AD5754 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2922, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800AF20DF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2923, 1, 2, 3, N'Kết Ca', N'Nhân Viên Kết Ca Bán Hàng', CAST(0x0000A83800AF4F58 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2924, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800AFE354 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2925, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800B703D9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2926, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800B8B62C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2927, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A83800BBA520 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2928, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200DC687D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2929, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200DDCFB7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2930, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200DF8352 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2931, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200E03090 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2932, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200E148F4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2933, 1, 2, 3, N'Kết Ca', N'Nhân Viên Kết Ca Bán Hàng', CAST(0x0000A84200E1B360 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2934, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200E22FEC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2935, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200E2855B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2936, 1, 2, 3, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A84200E2F942 AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_LichSuTruyCap] OFF
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] ON 

INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (1, N'0000001', N'Hệ Thống', N'ADMIN', N'01674799994', N'4e159eca79339d7142cfb140ab21454425874a85', N'luanhv@gpm.vn', 1, CAST(0x0000A7FA00B10340 AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (2, N'0000002', N'A Quang', N'ANHQUAN', N'1212121', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'aquan', 1, CAST(0x0000A8320102169E AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (3, N'0000003', N'Võ Thị Quỳnh Như', N'QUYNHNHU', N'0868154664', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'quynhnhu@vuonthuong.site', 2, CAST(0x0000A8320101B55E AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (4, N'0000004', N'Võ Thị Quỳnh Như', N'QUANTRI', N'01212', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'quynhnhu@vuonthuong.site', 1, CAST(0x0000A8320101F062 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[CF_NguyenLieu] ON 

INSERT [dbo].[CF_NguyenLieu] ([ID], [MaNguyenLieu], [TenNguyenLieu], [NhaCungCap], [GhiChu], [NgayCapNhat], [DaXoa], [IDDonViTinh], [GiaMua], [GiaBan], [TrangThai]) VALUES (56, N'0000001', N'Cua', N'', N'', CAST(0x0000A83300F00EAC AS DateTime), 0, 6, 100000, 180000, 1)
SET IDENTITY_INSERT [dbo].[CF_NguyenLieu] OFF
SET IDENTITY_INSERT [dbo].[CF_NhaCungCap] ON 

INSERT [dbo].[CF_NhaCungCap] ([ID], [TenNhaCungCap], [DienThoai], [Fax], [Email], [DiaChi], [NguoiLienHe], [MaSoThue], [LinhVucKinhDoanh], [NgayCapNhat], [GhiChu], [DaXoa], [CongNo]) VALUES (11, N'A', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000A83300000000 AS DateTime), N'', 0, 5350000)
SET IDENTITY_INSERT [dbo].[CF_NhaCungCap] OFF
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
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac] ON 

INSERT [dbo].[CF_PhieuXuatKhac] ([ID], [IDNhanVien], [NgayLapPhieu], [IDLyDoXuat], [IDChiNhanh], [GhiChu], [TongTien], [NgayCapNhat]) VALUES (18, 1, CAST(0x0000A83300000000 AS DateTime), 2, 1, N'', 0, CAST(0x0000A83301100396 AS DateTime))
INSERT [dbo].[CF_PhieuXuatKhac] ([ID], [IDNhanVien], [NgayLapPhieu], [IDLyDoXuat], [IDChiNhanh], [GhiChu], [TongTien], [NgayCapNhat]) VALUES (19, 1, CAST(0x0000A83300000000 AS DateTime), 2, 1, N'', 0, CAST(0x0000A83301106F4F AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac] OFF
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] ON 

INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] ([ID], [IDPhieuXuatKhac], [IDNguyenLieu], [TonKho], [IDDonViTinh], [SoLuongXuat], [MaNguyenLieu], [DonGia], [ThanhTien]) VALUES (8, 18, 56, 51.5, 6, 5.5, N'0000001', 100000, 0)
INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] ([ID], [IDPhieuXuatKhac], [IDNguyenLieu], [TonKho], [IDDonViTinh], [SoLuongXuat], [MaNguyenLieu], [DonGia], [ThanhTien]) VALUES (9, 19, 56, 51.5, 6, 1.5, N'0000001', 100000, 0)
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[CF_TonKho] ON 

INSERT [dbo].[CF_TonKho] ([ID], [IDNguyenLieu], [IDChiNhanh], [TrongLuong], [MaNguyenLieu], [DaXoa]) VALUES (63, 56, 1, 50, N'0000001', 0)
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
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (80, 1, 56, 1, -1, 0, N'Thêm đơn hàng', CAST(0x0000A8330106C0AF AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[GPM_LichSuKho] OFF
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([ID], [TieuDe], [CongTy], [DiaChi], [SDT], [TinhGio], [TestDuLieu], [ReportBill], [MayIn]) VALUES (1, N'', N'Công Ty GPM', N'Hàm Nghi Bình Khánh Long Xuyên', N'02966275595', 0, N'd9fd598e4ea9bc5deef68ae5fe1299871bebb033', 58, N'XP-58')
SET IDENTITY_INSERT [dbo].[Setting] OFF
ALTER TABLE [dbo].[CF_Ban] ADD  CONSTRAINT [DF_CF_Ban_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_Ban] ADD  CONSTRAINT [DF_CF_Ban_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_BangGia] ADD  CONSTRAINT [DF_CF_BangGia_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_ChiNhanh] ADD  CONSTRAINT [DF_CF_ChiNhanh_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_ChiTietBangGia] ADD  CONSTRAINT [DF_CF_ChiTietBangGia_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
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
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TienGio]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TienNuoc]  DEFAULT ((0)) FOR [GiamGia]
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
