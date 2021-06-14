using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class AdminGununYemegi : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            SqlCommand command = new SqlCommand("select * from tbl_yemekler", baglan.sqlBaglanti());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
        }
    }
}