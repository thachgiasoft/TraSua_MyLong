﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using QLCafe.DAO;
using QLCafe.BUS;
using QLCafe.DTO;

namespace QLCafe
{
    public partial class frmTachBan : DevExpress.XtraEditors.XtraForm
    {
        int IDBan = frmBanHang.IDBan;
        int IDHoaDon = DAO_BanHang.IDHoaDon(frmBanHang.IDBan);
        string IDChiNhanh = frmDangNhap.NguoiDung.Idchinhanh;
        List<ChiTietHoaDonA1> listChiTietHoaDonA1 = new List<ChiTietHoaDonA1>();
        List<ChiTietHoaDonB1> listChiTietHoaDonB1 = new List<ChiTietHoaDonB1>();
        public delegate void GetKT(int KT, int IDHoaDonA, int IDHoaDonB);
        public GetKT MyGetDataTachBan;
        public frmTachBan()
        {
            InitializeComponent();
        }

        private void btnAB2_Click(object sender, EventArgs e)
        {
            frmKiemTraTachBan fr = new frmKiemTraTachBan();
            fr.MyGetData = new frmKiemTraTachBan.GetString(GetValue);
            fr.ShowDialog();
        }

        private void GetValue(int KT, int SoLuong)
        {
            if (KT == 1 && listChiTietHoaDonA1.Count > 0)
            {
                int IDBanMoi = Int32.Parse(cmbBanB.EditValue.ToString());
                int SoLuongA = Int32.Parse(gridViewA.GetRowCellValue(gridViewA.FocusedRowHandle, gridViewA.Columns[3]).ToString());
                if (listChiTietHoaDonA1.Count == 1 && SoLuongA == 1)
                {
                    MessageBox.Show("Bạn đang chọn trạng thái tách bàn? Danh sách món ăn còn lại phải lớn hơn hoặc bằng 1.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    string TenHangHoa = gridViewA.GetRowCellValue(gridViewA.FocusedRowHandle, gridViewA.Columns[1]).ToString();
                    string MaHangHoa = gridViewA.GetRowCellValue(gridViewA.FocusedRowHandle, gridViewA.Columns[0]).ToString();
                    string DonViTinh = gridViewA.GetRowCellValue(gridViewA.FocusedRowHandle, gridViewA.Columns[2]).ToString();
                    float DonGia = float.Parse(gridViewA.GetRowCellValue(gridViewA.FocusedRowHandle, gridViewA.Columns[4]).ToString());
                    int IDHoaDon = DAO_BanHang.IDHoaDon(IDBan);
                    float TrongLuong = float.Parse(gridViewA.GetRowCellValue(gridViewA.FocusedRowHandle, gridViewA.Columns[6]).ToString());
                    if (SoLuongA == SoLuong)
                    {
                        int dongHienTai = gridViewA.FocusedRowHandle;
                        listChiTietHoaDonB1.Add(new ChiTietHoaDonB1
                        {
                            MaHangHoa = MaHangHoa,
                            TenHangHoa = TenHangHoa,
                            DonViTinh = DonViTinh,
                            DonGia = DonGia,
                            ThanhTien = TrongLuong > 0 ? (SoLuongA * (TrongLuong * DonGia)) : (SoLuongA * DonGia),
                            SoLuong = SoLuongA,
                            TrongLuong = TrongLuong,
                        });
                        listChiTietHoaDonA1.RemoveAt(dongHienTai);// xóa dòng hiện tại A1
                    }
                    else if (SoLuongA < SoLuong)
                    {
                        MessageBox.Show("Số lượng tách không đủ.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        int KiemTra = 0;
                        int SoLuongB = 0;
                        foreach (ChiTietHoaDonA1 item in listChiTietHoaDonA1)
                        {
                            if (item.MaHangHoa == MaHangHoa)
                            {
                                item.SoLuong = item.SoLuong - SoLuong;
                                SoLuongB = SoLuong;
                                item.ThanhTien = item.TrongLuong > 0 ? (item.SoLuong * (item.TrongLuong *item.DonGia)) : (item.SoLuong * item.DonGia);
                                KiemTra = 1;
                                break;
                            }
                        }
                        if (KiemTra == 1)
                        {
                            listChiTietHoaDonB1.Add(new ChiTietHoaDonB1
                            {
                                MaHangHoa = MaHangHoa,
                                TenHangHoa = TenHangHoa,
                                DonViTinh = DonViTinh,
                                DonGia = DonGia,
                                ThanhTien = TrongLuong > 0 ? (SoLuongB * (TrongLuong * DonGia)) : (SoLuongA * DonGia),
                                SoLuong = SoLuongB,
                                TrongLuong = TrongLuong,
                            });
                        }
                    }
                    gridControlB.DataSource = null;
                    gridControlB.Refresh();
                    gridControlB.DataSource = listChiTietHoaDonB1;
                    gridControlA.DataSource = null;
                    gridControlA.Refresh();
                    gridControlA.DataSource = listChiTietHoaDonA1;
                }
            }
            else
            {
                MessageBox.Show("Danh sách món ăn không có.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void btnLamLai_Click(object sender, EventArgs e)
        {
            LamMoi();
            int IDBanMoi = 0;
            if (cmbBanB.EditValue != null)
            {
                IDBanMoi = Int32.Parse(cmbBanB.EditValue.ToString());
                DanhSachHangHoaB(IDBanMoi);
            }
        }
        private void btnHuy_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn thật sự muốn thoát. Dữ liệu thay đổi không được lưu lại?", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.OK)
            {
                this.Close();
            }
        }

        private void cmbKhuVucB_EditValueChanged(object sender, EventArgs e)
        {
            cmbBanB.Enabled = true;
            btnAB2.Enabled = false;
            btnThucHien.Enabled = false;
            int IDKhuVuc = Int32.Parse(cmbKhuVucB.EditValue.ToString());
            DanhSachBanTheoKhuVuc(IDKhuVuc);
            listChiTietHoaDonB1.Clear();
            gridControlB.DataSource = null;
            gridControlB.Refresh();
        }

        private void cmbBanB_EditValueChanged(object sender, EventArgs e)
        {
            btnAB2.Enabled = true;
            listChiTietHoaDonB1.Clear();
            gridControlB.DataSource = null;
            gridControlB.Refresh();
            LamMoi();
            btnThucHien.Enabled = true;
            DanhSachHangHoaB(Int32.Parse(cmbBanB.EditValue.ToString()));
        }
        public void DanhSachHangHoaB(int IDBanB)
        {
            listChiTietHoaDonB1.Clear();
            // lấy món ăn theo IDBan
            gridViewB.OptionsSelection.EnableAppearanceFocusedRow = false;// Ẩn dòng đầu...
            List<DTO_DanhSachMenu> MonAnThuong = DAO_DanhSachMonAn.Instance.GetMonAnThuong(DAO_BanHang.IDHoaDon(IDBanB));
            List<DTO_DanhSachMenu> MonAnTuChon = DAO_DanhSachMonAn.Instance.GetMonAnTuChon(DAO_BanHang.IDHoaDon(IDBanB));
            foreach (DTO_DanhSachMenu item in MonAnThuong)
            {
                listChiTietHoaDonB1.Add(new ChiTietHoaDonB1
                {
                    MaHangHoa = item.MaHangHoa,
                    TenHangHoa = item.TenHangHoa,
                    DonViTinh = item.DonViTinh,
                    DonGia = item.DonGia,
                    ThanhTien = item.ThanhTien,
                    TrongLuong = item.TrongLuong,
                    SoLuong = item.SoLuong,
                });
            }
            foreach (DTO_DanhSachMenu item in MonAnTuChon)
            {
                listChiTietHoaDonB1.Add(new ChiTietHoaDonB1
                {
                    MaHangHoa = item.MaHangHoa,
                    TenHangHoa = item.TenHangHoa,
                    DonViTinh = item.DonViTinh,
                    DonGia = item.DonGia,
                    ThanhTien = item.ThanhTien,
                    TrongLuong = item.TrongLuong,
                    SoLuong = item.SoLuong,
                });
            }
            gridControlB.DataSource = null;
            gridControlB.Refresh();
            gridControlB.DataSource = listChiTietHoaDonB1;
        }
        public void DanhSachBanTheoKhuVuc(int IDKhuVuc)
        {
            //danh sách bàn tất cả
            List<DTO_BAN> ban = DAO_ChuyenBan.DanhSachBanTheoKhuVuc(IDKhuVuc, -1, IDBan);
            cmbBanB.Properties.DataSource = ban;
            cmbBanB.Properties.ValueMember = "Id";
            cmbBanB.Properties.DisplayMember = "Tenban";
        }
        private void frmTachBan_Load(object sender, EventArgs e)
        {
            LamMoi();
        }
        public void LamMoi()
        {
            DanhSachHangHoaA();
            cmbBanA.Properties.NullText = DAO_ChuyenBan.LayTenBan(IDBan);
            int IDkhuVuc = DAO_ChuyenBan.LayIDKhuVuc(IDBan);
            cmbKhuVucA.Properties.NullText = DAO_ChuyenBan.LayTenKhuVuc(IDkhuVuc).ToString();
            DataTable dt = BUS_KhuVuc.DanhSachBanTheoKhuVuc(IDChiNhanh);
            cmbKhuVucB.Properties.DataSource = dt;
            cmbKhuVucB.Properties.ValueMember = "ID";
            cmbKhuVucB.Properties.DisplayMember = "TenKhuVuc";
        }
        public void DanhSachHangHoaA()
        {
            listChiTietHoaDonA1.Clear();
            List<DTO_DanhSachMenu> MonAnThuong = DAO_DanhSachMonAn.Instance.GetMonAnThuong(DAO_BanHang.IDHoaDon(IDBan));
            List<DTO_DanhSachMenu> MonAnTuChon = DAO_DanhSachMonAn.Instance.GetMonAnTuChon(DAO_BanHang.IDHoaDon(IDBan));
            foreach (DTO_DanhSachMenu item in MonAnThuong)
            {
                listChiTietHoaDonA1.Add(new ChiTietHoaDonA1
                {
                    MaHangHoa = item.MaHangHoa,
                    TenHangHoa = item.TenHangHoa,
                    DonViTinh = item.DonViTinh,
                    DonGia = item.DonGia,
                    ThanhTien = item.ThanhTien,
                    TrongLuong = item.TrongLuong,
                    SoLuong = item.SoLuong,
                });
            }
            foreach (DTO_DanhSachMenu item in MonAnTuChon)
            {
                listChiTietHoaDonA1.Add(new ChiTietHoaDonA1
                {
                    MaHangHoa = item.MaHangHoa,
                    TenHangHoa = item.TenHangHoa,
                    DonViTinh = item.DonViTinh,
                    DonGia = item.DonGia,
                    ThanhTien = item.ThanhTien,
                    TrongLuong = item.TrongLuong,
                    SoLuong = item.SoLuong,
                });
            }
            gridControlA.DataSource = null;
            gridControlA.Refresh();
            gridControlA.DataSource = listChiTietHoaDonA1;
        }
        private void gridControlA_Click(object sender, EventArgs e)
        {
            if (cmbBanB.EditValue != null)
            {
                btnAB2.Enabled = true;
            }
        }

        private void gridControlB_Click(object sender, EventArgs e)
        {
            if (cmbBanB.EditValue != null)
            {
                btnAB2.Enabled = false;
            }
        }
        private void btnThucHien_Click(object sender, EventArgs e)
        {
            // lấy lại dữ liệu A và B, xóa chi tiết A, thêm lại A, Thêm B + Hóa Đơn Mới(if đã tồn tại thêm chèn vào)
            if (listChiTietHoaDonB1.Count > 0)
            {
                int IDHoaDonA = IDHoaDon;
                int IDBanA = IDBan;
                int IDBanB = Int32.Parse(cmbBanB.EditValue.ToString());
                int IDHoaDonB = DAO_BanHang.IDHoaDon(IDBanB);// nếu idhoadonb = 0 thì tạo IDHoaDonMoi
                if (IDHoaDonB == 0)
                {
                    int IDNhanVien = frmDangNhap.NguoiDung.Id;
                    object ID = DAO_GoiMon.ThemHoaDon(IDBanB, IDNhanVien);
                    if (ID != null)
                    {
                        IDHoaDonB = Int32.Parse(ID.ToString());
                    }
                }
                // Xóa A Lưu Lại A, XÓa B Lưu Lại B

                if (DAO_ChuyenBan.XoaChiTietBanCu(IDHoaDonA, IDBanA) == true && DAO_ChuyenBan.XoaChiTietBanCu(IDHoaDonB, IDBanB))
                {
                    foreach (ChiTietHoaDonA1 item in listChiTietHoaDonA1)
                    {
                        float TrongLuong = item.TrongLuong;
                        string MaHang = item.MaHangHoa;
                        int SoLuong = item.SoLuong;
                        float DonGia = item.DonGia;
                        float ThanhTien = TrongLuong > 0 ? (SoLuong * (TrongLuong * DonGia)) : (SoLuong * DonGia);
                        int IDHangHoa = TrongLuong > 0 ? DAO_Setting.LayIDHangHoaTuChon(MaHang) : DAO_Setting.LayIDHangHoa(MaHang);
                        int IDDonViTinh = TrongLuong > 0 ? DAO_Setting.LayIDDonViTinhTuChon(MaHang) : DAO_Setting.LayIDDonViTinh(MaHang);
                        // xóa a. Lưu lại A.
                        DAO_GoiMon.ThemChiTietHoaDon(IDHoaDonA, IDHangHoa, SoLuong, DonGia, ThanhTien, IDBanA, MaHang, IDDonViTinh, TrongLuong); 
                    }
                    foreach (ChiTietHoaDonB1 item in listChiTietHoaDonB1)
                    {
                        string MaHang = item.MaHangHoa;
                        int SoLuong = item.SoLuong;
                        float DonGia = item.DonGia;
                        float TrongLuong = item.TrongLuong;
                        float ThanhTien = TrongLuong > 0 ? (SoLuong * (TrongLuong * DonGia)) : (SoLuong * DonGia);
                        int IDHangHoa = TrongLuong > 0 ? DAO_Setting.LayIDHangHoaTuChon(MaHang) : DAO_Setting.LayIDHangHoa(MaHang);
                        int IDDonViTinh = TrongLuong > 0 ? DAO_Setting.LayIDDonViTinhTuChon(MaHang) : DAO_Setting.LayIDDonViTinh(MaHang);
                        // xóa B. Lưu lại B.
                        if (DAO_ChiTietHoaDon.KiemTraHangHoa(IDHoaDonB, IDHangHoa, IDBanB, TrongLuong) == false)
                        {
                            DAO_GoiMon.ThemChiTietHoaDon(IDHoaDonB, IDHangHoa, SoLuong, DonGia, ThanhTien, IDBanB, MaHang, IDDonViTinh, TrongLuong); 
                        }
                        else
                        {
                            DAO_GoiMon.CapNhatChiTietHoaDon(IDHoaDonB, SoLuong, ThanhTien, IDHangHoa, IDBanB);
                        }
                        DAO_BAN.DoiTrangThaiBanCoNguoi(IDBanB);
                    }
                    if (MyGetDataTachBan != null)
                    {
                        MyGetDataTachBan(1, IDHoaDonA, IDHoaDonB);
                        this.Close();
                    }
                }
            }
            else
            {
                MessageBox.Show("Danh sách món ăn rỗng. Vui lòng kiểm tra lại?", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        //----------------------------------------------------------
        public class ChiTietHoaDonA1
        {
            private float trongLuong;

            public float TrongLuong
            {
                get { return trongLuong; }
                set { trongLuong = value; }
            }
            private float thanhTien;

            public float ThanhTien
            {
                get { return thanhTien; }
                set { thanhTien = value; }
            }

            private float donGia;

            public float DonGia
            {
                get { return donGia; }
                set { donGia = value; }
            }
            private int soLuong;

            public int SoLuong
            {
                get { return soLuong; }
                set { soLuong = value; }
            }
            private string donViTinh;

            public string DonViTinh
            {
                get { return donViTinh; }
                set { donViTinh = value; }
            }
            private string tenHangHoa;

            public string TenHangHoa
            {
                get { return tenHangHoa; }
                set { tenHangHoa = value; }
            }
            private string maHangHoa;

            public string MaHangHoa
            {
                get { return maHangHoa; }
                set { maHangHoa = value; }
            }
        }
        //--------------------------------------------------------------------
        public class ChiTietHoaDonB1
        {
            private float trongLuong;

            public float TrongLuong
            {
                get { return trongLuong; }
                set { trongLuong = value; }
            }
            private float thanhTien;

            public float ThanhTien
            {
                get { return thanhTien; }
                set { thanhTien = value; }
            }

            private float donGia;

            public float DonGia
            {
                get { return donGia; }
                set { donGia = value; }
            }
            private int soLuong;

            public int SoLuong
            {
                get { return soLuong; }
                set { soLuong = value; }
            }
            private string donViTinh;

            public string DonViTinh
            {
                get { return donViTinh; }
                set { donViTinh = value; }
            }
            private string tenHangHoa;

            public string TenHangHoa
            {
                get { return tenHangHoa; }
                set { tenHangHoa = value; }
            }
            private string maHangHoa;

            public string MaHangHoa
            {
                get { return maHangHoa; }
                set { maHangHoa = value; }
            }
        }
    }
}