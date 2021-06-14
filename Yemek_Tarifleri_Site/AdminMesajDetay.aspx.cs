using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["mesajid"];
            SqlCommand command = new SqlCommand("select *from Tbl_mesajlar where mesajid=@p1", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", id);
            SqlDataReader read = command.ExecuteReader();
            while(read.Read())
            {
                TextBox1.Text = read[1].ToString();
                TextBox2.Text = read[2].ToString();
                TextBox3.Text = read[3].ToString();
                TextBox4.Text = read[4].ToString();
               
            }
            baglan.sqlBaglanti().Close();
        }
    }
}