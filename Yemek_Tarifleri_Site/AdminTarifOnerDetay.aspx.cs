using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class AdminTarifOnerDetay : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarifid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("select * from tbl_tarifler where tarifid=@p1", baglan.sqlBaglanti());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TxtTarifAd.Text = read[1].ToString();
                    TxtTarifMalzeme.Text = read[2].ToString();
                    TxtTarifTarif.Text = read[3].ToString();
                    TxtTarifOneren.Text = read[5].ToString();
                    TxtTarifMail.Text = read[6].ToString();

                }
                baglan.sqlBaglanti().Close();


                SqlCommand sql = new SqlCommand("Select * from tbl_Kategoriler", baglan.sqlBaglanti());
                SqlDataReader read2 = sql.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = read2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnTarif_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", id);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();


            //yemeği ana sayfaya ekleme
            SqlCommand command2 = new SqlCommand("insert into tbl_yemekler(yemekad,yemekmalzeme,yemektarifi,kategoriid) values (@p1,@p2,@p3,@p4)", baglan.sqlBaglanti());
            command2.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            command2.Parameters.AddWithValue("@p2", TxtTarifMalzeme.Text);
            command2.Parameters.AddWithValue("@p3", TxtTarifTarif.Text);
            command2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            command2.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();


        }
    }
}