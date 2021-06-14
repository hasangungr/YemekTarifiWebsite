using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {



                SqlCommand command = new SqlCommand("select yorumadsoyad,yorummail,yorumicerik,yemekad from tbl_yorumlar " +
                    "inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1", baglan.sqlBaglanti());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TxtAd.Text = read[0].ToString();
                    TxtMail.Text = read[1].ToString();
                    TxtYorum.Text = read[2].ToString();
                    TxtYemek.Text = read[3].ToString();

                }
                baglan.sqlBaglanti().Close();
            }
        }

        protected void BtnOnay_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update tbl_yorumlar set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", TxtYorum.Text);
            command.Parameters.AddWithValue("@p2", "true");
            command.Parameters.AddWithValue("@p3", id);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
        }
    }
}