﻿using BanHang.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanHang
{
    public partial class QuanLyBan : System.Web.UI.Page
    {
        dtBan data = new dtBan();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }

        private void LoadGrid()
        {
            data = new dtBan();
            gridDanhSach.DataSource = data.DanhSach();
            gridDanhSach.DataBind();
        }

        protected void gridDanhSach_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            string ID = e.Keys[0].ToString();
            data = new dtBan();
            if (dtBan.TrangThai(ID) != 0)
            {
                throw new Exception("Lỗi: Bàn này đang có món ăn?");
            }
            else
            {
                data.Xoa(ID);
            }
            e.Cancel = true;
            gridDanhSach.CancelEdit();
            LoadGrid();
            dtLichSuTruyCap.ThemLichSu(Session["IDChiNhanh"].ToString(), Session["IDNhom"].ToString(), Session["IDNhanVien"].ToString(), "Quản lý bàn", "Xóa bàn: " + ID);
        }

        protected void gridDanhSach_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            string TenBan = e.NewValues["TenBan"].ToString();
            string IDKhuVuc = e.NewValues["IDKhuVuc"].ToString();
            string MaBan = dtBan.Dem_Max(IDKhuVuc);
            string KyHieu = dtBan.LayKyHieu(IDKhuVuc);
            //string IDChiNhanh = dtBan.LayIDChiNhanh(IDKhuVuc);
            //if (dtSetting.IsNumber(TenBan) == true)
            //{
                if (KyHieu != "")
                {
                    if (dtBan.KiemTra(TenBan, IDKhuVuc) == true)
                    {
                        data = new dtBan();
                        data.Them(MaBan,TenBan, IDKhuVuc, "1");
                    }
                    else
                    {
                        throw new Exception("Lỗi:Tên bàn đã tồn tại?");
                    }
                }
            //}
            //else
            //{
            //    throw new Exception("Lỗi:Tên bàn phải là số?");
            //}
            e.Cancel = true;
            gridDanhSach.CancelEdit();
            LoadGrid();
            dtLichSuTruyCap.ThemLichSu(Session["IDChiNhanh"].ToString(), Session["IDNhom"].ToString(), Session["IDNhanVien"].ToString(), "Quản lý bàn", "Thêm bàn: " + TenBan);
        }

        protected void gridDanhSach_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            string ID = e.Keys[0].ToString();
            string TenBan = e.NewValues["TenBan"].ToString();
            string IDKhuVuc = e.NewValues["IDKhuVuc"].ToString();
            if (dtSetting.IsNumber(TenBan) == true)
            {
                data = new dtBan();
                data.Sua(ID, TenBan, IDKhuVuc);
            }
            else
            {
                throw new Exception("Lỗi:Tên bàn phải là số?");
            }
            e.Cancel = true;
            gridDanhSach.CancelEdit();
            LoadGrid();
            dtLichSuTruyCap.ThemLichSu(Session["IDChiNhanh"].ToString(), Session["IDNhom"].ToString(), Session["IDNhanVien"].ToString(), "Quản lý bàn", "Cập nhật bàn: " + ID);
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Clear();
            popup.ShowOnPageLoad = false;
        }

        protected void btnThemBan_Click(object sender, EventArgs e)
        {
            popup.ShowOnPageLoad = true;
        }
        public void Clear()
        {
            txtSoA.Text = "";
            txtSoB.Text = "";
            cmbKhuVuc.Text = "";
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (cmbKhuVuc.Text != "" && txtSoA.Text != "" && txtSoB.Text != "")
            {
                string IDKhuVuc = cmbKhuVuc.Value.ToString();
                int SoA = Int32.Parse(txtSoA.Text.ToString());
                int SoB = Int32.Parse(txtSoB.Text.ToString());
                string KyHieu = dtBan.LayKyHieu(IDKhuVuc);
                //string IDChiNhanh = dtBan.LayIDChiNhanh(IDKhuVuc);
                for (int i = SoA; i <= SoB; i++)
                {
                    string MaBan = dtBan.Dem_Max(IDKhuVuc);
                    if (KyHieu != "")
                    {
                        if (dtBan.KiemTra(KyHieu + " - " + i, IDKhuVuc) == true)
                        {
                            data = new dtBan();
                            data.Them(MaBan, KyHieu + " - " + i, IDKhuVuc, "1");
                            dtLichSuTruyCap.ThemLichSu(Session["IDChiNhanh"].ToString(), Session["IDNhom"].ToString(), Session["IDNhanVien"].ToString(), "Quản lý bàn", "Thêm bàn: " + KyHieu + " - " + i);
                        }
                    }
                }
                popup.ShowOnPageLoad = false;
                LoadGrid();
                Clear();
            }
            else
            {
                Response.Write("<script language='JavaScript'> alert('Vui lòng điền đầy đủ thông tin.'); </script>");
            }
        }
    }
}