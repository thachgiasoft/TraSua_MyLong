﻿using BanHang.Report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanHang
{
    public partial class TonKhoBanDau_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rpTonKhoBanDau rp = new rpTonKhoBanDau();
            viewerReport.Report = rp;
        }
    }
}