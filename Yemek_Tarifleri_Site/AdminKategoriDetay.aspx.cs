using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site
{
    public partial class AdminKategoriDetay : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("select *   from Tbl_Kategoriler where Kategoriid=@p1", baglan.sqlBaglanti());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TextBox1.Text = read[1].ToString();
                    TextBox2.Text = read[2].ToString();

                }
                baglan.sqlBaglanti().Close();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where Kategoriid=@p3", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", id);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
        }
    }
}