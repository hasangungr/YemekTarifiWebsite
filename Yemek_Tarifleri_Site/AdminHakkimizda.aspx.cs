using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class AdminHakkimizda : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Panel2.Visible = false;

            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("select * from tbl_hakkimizda", baglan.sqlBaglanti());
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TextBox1.Text = read[0].ToString();
                }
                baglan.sqlBaglanti().Close();
            }
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
            SqlCommand command = new SqlCommand("update tbl_hakkimizda set hakkimizda=@p1", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
        }
    }
}