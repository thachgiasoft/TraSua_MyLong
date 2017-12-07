using System;
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

namespace QLCafe
{
    public partial class frmThemTenKhachHang : DevExpress.XtraEditors.XtraForm
    {
        int IDBan = frmBanHang.IDBan;
        public delegate void GetThemKhachHang(string TenKhachHang, int IDBan);
        public GetThemKhachHang MyGetData;
        public frmThemTenKhachHang()
        {
            InitializeComponent();
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            string TenKhachHang = txtTenKhachHang.Text;
            if (MyGetData != null)
            {
                MyGetData(TenKhachHang, IDBan);
            }
            this.Close();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmThemTenKhachHang_Load(object sender, EventArgs e)
        {
            lblTenBan.Text = DAO_GoiMon.TenBan(IDBan);

        }
    }
}