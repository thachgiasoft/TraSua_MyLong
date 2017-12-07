﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLCafe.DTO
{
    public class DTO_BAN
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string maban;

        public string Maban
        {
            get { return maban; }
            set { maban = value; }
        }
        private string tenban;

        public string Tenban
        {
            get { return tenban; }
            set { tenban = value; }
        }
        private int idkhuvuc;

        public int Idkhuvuc
        {
            get { return idkhuvuc; }
            set { idkhuvuc = value; }
        }
        private int trangthai;

        public int Trangthai
        {
            get { return trangthai; }
            set { trangthai = value; }
        }

        private int iDChiNhanh;

        public int IDChiNhanh
        {
            get { return iDChiNhanh; }
            set { iDChiNhanh = value; }
        }
        private DateTime ngayCapNhat;

        public DateTime NgayCapNhat
        {
            get { return ngayCapNhat; }
            set { ngayCapNhat = value; }
        }

        private string tenKhachHang;

        public string TenKhachHang
        {
            get { return tenKhachHang; }
            set { tenKhachHang = value; }
        }
        public DTO_BAN(int getid, string getmaban, string gettenban, int getkhuvuc, int gettrangthai,int getidchianh,DateTime getNgayCapNhat, string getTenKhachHang)
        {
            Id = getid;
            Maban = getmaban;
            Tenban = gettenban;
            Idkhuvuc = getkhuvuc;
            Trangthai = gettrangthai;
            IDChiNhanh = getidchianh;
            NgayCapNhat = getNgayCapNhat;
            TenKhachHang = getTenKhachHang;

        }
        public DTO_BAN(DataRow dr)
        {
            this.Id = (int)dr["ID"];
            this.Maban = dr["MaBan"].ToString();
            this.Tenban = dr["TenBan"].ToString();
            this.Idkhuvuc = Int32.Parse(dr["IDKhuVuc"].ToString());
            this.Trangthai = Int32.Parse(dr["TrangThai"].ToString());
            this.IDChiNhanh = Int32.Parse(dr["IDChiNhanh"].ToString());
            this.NgayCapNhat = DateTime.Parse(dr["NgayCapNhat"].ToString());
            this.TenKhachHang = dr["TenKhachHang"].ToString();
        }

    }
}
