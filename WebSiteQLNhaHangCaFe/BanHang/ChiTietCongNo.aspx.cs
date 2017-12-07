﻿using BanHang.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanHang
{
    public partial class ChiTietCongNo : System.Web.UI.Page
    {
        dtCongNo data = new dtCongNo();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }

        private void LoadGrid()
        {
            data = new dtCongNo();
            gridDanhSach.DataSource = data.DanhSachChiTietCongNo();
            gridDanhSach.DataBind();
        }
    }
}