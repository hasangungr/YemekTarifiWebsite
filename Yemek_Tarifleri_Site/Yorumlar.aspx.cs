using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            //onaylı
            SqlCommand command = new SqlCommand("select * from Tbl_Yorumlar where yorumonay=1", baglan.sqlBaglanti());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            //onaysız
            SqlCommand command2 = new SqlCommand("select * from Tbl_Yorumlar where yorumonay=0", baglan.sqlBaglanti());
            SqlDataReader read2 = command2.ExecuteReader();
            DataList2.DataSource = read2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}