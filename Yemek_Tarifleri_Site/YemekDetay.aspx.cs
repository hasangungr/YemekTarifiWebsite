using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            yemekid = Request.QueryString["yemekid"];

            SqlCommand command = new SqlCommand("Select YemekAd From Tbl_Yemekler where Yemekid=@p1", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = command.ExecuteReader();

            while(dr.Read())
            {
                Label2.Text = dr[0].ToString();

            }
            baglan.sqlBaglanti().Close();

            //Yorumları listeleme
            SqlCommand command2 = new SqlCommand("Select * From Tbl_Yorumlar where yemekid=@p2", baglan.sqlBaglanti());
            command2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader read2 = command2.ExecuteReader();
            DataList2.DataSource = read2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad, YorumMail,Yorumicerik,yemekid) values(@p1,@p2,@p3,@p4)", baglan.sqlBaglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
            
             

        }
    }
}