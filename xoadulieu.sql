USE [gpm_codeVuonThuong]
GO
/****** Object:  Table [dbo].[CF_Ban]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_BangGia]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiNhanh]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietBangGia]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietCongNo]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietGio]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietHoaDon]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_ChiTietHoaDon_Temp]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_DatBan]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_DonDatHang]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet_Temp]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_DonViTinh]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_Gio]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_HangHoa]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet_Temp]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_HoaDon]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_KetCa]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_KeyCode]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_KhuVuc]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_KiemKho]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet_Temp]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_LichSuKho]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_LichSuThayDoiGia]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_LichSuTruyCap]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_NguoiDung]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_NguyenLieu]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_NguyenLieu_Barcode]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_NhaCungCap]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_NhomHangHoa]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_NhomNguoiDung]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_PhieuXuatKhac]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_TonKho]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[CF_TrangThaiPhieuXuatKhac]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[GPM_ChiTietHoaDon]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[GPM_HoaDon]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[GPM_KhachHang]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[GPM_LichSuKho]    Script Date: 07/12/2017 2:15:16 PM ******/
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
/****** Object:  Table [dbo].[Setting]    Script Date: 07/12/2017 2:15:16 PM ******/
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
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] ON 

INSERT [dbo].[CF_ChiNhanh] ([ID], [MaChiNhanh], [TenChiNhanh], [DienThoai], [DiaChi], [NgayMo], [NgayCapNhat], [DaXoa]) VALUES (1, N'0001', N'Chi Nhánh Long Xuyên', N'0123456789', N'Long Xuyên ', CAST(0x0000A7D000000000 AS DateTime), CAST(0x0000A84200E721AD AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] OFF
SET IDENTITY_INSERT [dbo].[CF_DonViTinh] ON 

INSERT [dbo].[CF_DonViTinh] ([ID], [MaDVT], [TenDonViTinh], [NgayCapNhat], [DaXoa]) VALUES (22, N'0001', N'LY', CAST(0x0000A84200E93827 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_DonViTinh] OFF
SET IDENTITY_INSERT [dbo].[CF_LichSuTruyCap] ON 

INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2942, 1, 1, 1, N'Đơn vị tính', N'Thêm đơn vị tính: LY', CAST(0x0000A84200E9382D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2943, 1, 1, 2, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A84200EA0590 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2944, 1, 1, 2, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A84200EA3BFC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2945, 1, 1, 2, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A84200EA7B37 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (2946, 1, 1, 2, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A84200EAC065 AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_LichSuTruyCap] OFF
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] ON 

INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (1, N'0000001', N'Hệ Thống', N'ADMIN', N'01674799994', N'4e159eca79339d7142cfb140ab21454425874a85', N'luanhv@gpm.vn', 1, CAST(0x0000A7FA00B10340 AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (2, N'0000002', N'Quản Trị', N'QUANTRI', N'1', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'1', 1, CAST(0x0000A84200E70CE5 AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (3, N'0000003', N'Thu Ngân', N'THUNGAN', N'1', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'1', 2, CAST(0x0000A84200E6CB62 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[CF_NhaCungCap] ON 

INSERT [dbo].[CF_NhaCungCap] ([ID], [TenNhaCungCap], [DienThoai], [Fax], [Email], [DiaChi], [NguoiLienHe], [MaSoThue], [LinhVucKinhDoanh], [NgayCapNhat], [GhiChu], [DaXoa], [CongNo]) VALUES (11, N'Khách lẻ', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000A83300000000 AS DateTime), N'', 0, 0)
SET IDENTITY_INSERT [dbo].[CF_NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[CF_NhomNguoiDung] ON 

INSERT [dbo].[CF_NhomNguoiDung] ([ID], [MaNhom], [TenNhom], [NgayCapNhat]) VALUES (1, N'0001', N'Nhóm Quản Trị', CAST(0x0000A7D000BBE141 AS DateTime))
INSERT [dbo].[CF_NhomNguoiDung] ([ID], [MaNhom], [TenNhom], [NgayCapNhat]) VALUES (2, N'0002', N'Nhóm Thu Ngân', CAST(0x0000A7D000BBEA6E AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_NhomNguoiDung] OFF
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
