﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select Hakkimizda from Tbl_Hakkimizda ", baglan.sqlBaglanti());
            SqlDataReader read = command.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();
            
        }
    }
}