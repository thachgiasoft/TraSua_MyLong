﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLCafe.DAO
{
    public class DAO_ChiTietHoaDonChinh
    {
        public static bool ThemChiTietHoaDonChinh(int IDHoaDon, int IDHangHoa, int SL, double DonGia, double ThanhTien, int IDBan, string MaHangHoa, int IDDonViTinh, float TrongLuong)
        {
            string sTruyVan = string.Format(@"INSERT INTO CF_ChiTietHoaDon(IDHoaDon,IDHangHoa,SoLuong,DonGia,ThanhTien,IDBan,MaHangHoa,IDDonViTinh,TrongLuong) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", IDHoaDon, IDHangHoa, SL, DonGia, ThanhTien, IDBan, MaHangHoa, IDDonViTinh, TrongLuong);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }
        public static bool XoaChiTietHoaDonTemp(int IDHoaDon)
        {
            string sTruyVan = string.Format(@"DELETE FROM [CF_ChiTietHoaDon_Temp] WHERE IDHoaDon = {0}", IDHoaDon);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }
        public static bool CapNhatChiTietGio(int IDHoaDon, int IDBan)
        {
            string sTruyVan = string.Format(@"UPDATE [CF_ChiTietGio] SET [ThanhToan] = 1 WHERE [TrangThai] = 1 AND [IDHoaDon] = {0} AND [IDBan] = {1}", IDHoaDon, IDBan);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }
        public static bool CapNhatHoaDonChinh(int IDHoaDon, int IDBan, int IDNhanVien, double KhachThanhToan, double TienThua, double KhachCanTra, string HinhThucGiamGia, double GiamGia)
        {
            string sTruyVan = string.Format(@"UPDATE [CF_HoaDon] SET [GiamGia] = '{7}',[HinhThucGiamGia] = N'{6}',[KhachCanTra] = '{5}',[TrangThai] = 1, [GioRa] = getdate(), [IDNhanVien] = {0},[KhachThanhToan] = '{1}', [TienThua] = '{2}' WHERE [ID] = {3} AND [IDBan] = {4}", IDNhanVien, KhachThanhToan, TienThua, IDHoaDon, IDBan, KhachCanTra, HinhThucGiamGia, GiamGia);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }

        public static bool CapNhatChiTietGio_ID(int IDHoaDon, int IDBan, int ID)
        {
            string sTruyVan = string.Format(@"UPDATE [CF_ChiTietGio] SET [ThanhToan] = 1, [IDHoaDon] = {0} WHERE [TrangThai] = 1  AND [IDBan] = {1} AND [ID] = {2}", IDHoaDon, IDBan, ID);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }
      
        public static object ThemMoiHoaDon(int IDBan, int NhanVien, DateTime GioVao)
        {
            object ID = null;
            string sTruyVan = string.Format(@"INSERT INTO CF_HoaDon(IDBan,GioVao,IDNhanVien,GioRa) OUTPUT INSERTED.ID VALUES ('{0}','{1}',{2},getdate())", IDBan, GioVao.ToString("yyyy-MM-dd hh:mm:ss tt"), NhanVien);
            SqlConnection conn = new SqlConnection();
            DAO_ConnectSQL connect = new DAO_ConnectSQL();
            conn = connect.Connect();
            SqlCommand cm = new SqlCommand(sTruyVan, conn);
            ID = cm.ExecuteScalar();
            return ID;
        }

        public static DateTime LayGioVao(int IDHoaDon)
        {
            string sTruyVan = string.Format(@"SELECT GioVao FROM [CF_HoaDon] WHERE [ID] = {0} ", IDHoaDon);
            DataTable data = new DataTable();
            data = DataProvider.TruyVanLayDuLieu(sTruyVan);
            if (data.Rows.Count > 0)
            {
                DataRow dr = data.Rows[0];
                return DateTime.Parse(dr["GioVao"].ToString());
            }
            else
                return DateTime.Now;
        }
        public static bool CapNhatTongTienHoaDonChinh(int IDHoaDon, int IDBan, double TongTien)
        {
            string sTruyVan = string.Format(@"UPDATE [CF_HoaDon] SET [TrangThai] = 1,  [TongTien] = {0},KhachCanTra = {5},[KhachThanhToan] = '{1}', [TienThua] = '{2}' WHERE [ID] = {3} AND [IDBan] = {4}", TongTien, TongTien, TongTien, IDHoaDon, IDBan, TongTien);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }
        public static bool CapNhatTienGioHoaDonChinh(int IDHoaDon, int IDBan, double TienGio)
        {
            string sTruyVan = string.Format(@"UPDATE [CF_HoaDon] SET [TrangThai] = 1,  [TienGio] = {0} WHERE [ID] = {1} AND [IDBan] = {2}", TienGio, IDHoaDon, IDBan);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }
        public static bool KiemTraHangHoa(int IDHoaDon, int IDHangHoa, int IDBan, float TrongLuong)
        {
            string sTruyVan = string.Format(@"SELECT * FROM [CF_ChiTietHoaDon] WHERE IDBan = {0} AND IDHangHoa = {1} AND [IDHoaDon] = {2} AND TrongLuong = '{3}'", IDBan, IDHangHoa, IDHoaDon, TrongLuong);
            DataTable data = new DataTable();
            data = DataProvider.TruyVanLayDuLieu(sTruyVan);
            if (data.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }
        public static bool CapNhatChiTietHoaDon(int IDHoaDon, int SL, double ThanhTien, int IDHangHoa, int IDBan)
        {
            string sTruyVan = string.Format(@"UPDATE CF_ChiTietHoaDon SET [SoLuong] =  SoLuong + {0}, [ThanhTien] = [ThanhTien] + {1} WHERE [IDHoaDon] = {2} AND [IDHangHoa] = {3} AND [IDBan] = {4}", SL, ThanhTien, IDHoaDon, IDHangHoa, IDBan);
            return DataProvider.TruyVanKhongLayDuLieu(sTruyVan);
        }
    }
}
