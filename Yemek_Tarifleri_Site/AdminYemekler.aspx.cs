using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class AdminYemekler : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;

            if(Page.IsPostBack==false)
            {

                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];



                //Kategori List
                SqlCommand sql = new SqlCommand("Select * from tbl_Kategoriler", baglan.sqlBaglanti());
                SqlDataReader read2 = sql.ExecuteReader();
                DropDown.DataTextField = "KategoriAd";
                DropDown.DataValueField = "Kategoriid";
                DropDown.DataSource = read2;
                DropDown.DataBind();

            }

            //Yemek Listesi
            SqlCommand command = new SqlCommand("Select * from Tbl_Yemekler", baglan.sqlBaglanti());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            baglan.sqlBaglanti().Close();


            if(islem=="sil")
            {
                SqlCommand c1 = new SqlCommand("Delete from tbl_yemekler where yemekid=@p1", baglan.sqlBaglanti());
                c1.Parameters.AddWithValue("@p1", id);
                c1.ExecuteNonQuery();
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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {//Yemek ekleme
            SqlCommand sql = new SqlCommand("insert into Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarifi,kategoriid) values(@p1,@p2,@p3,@p4)", baglan.sqlBaglanti());
            sql.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            sql.Parameters.AddWithValue("@p2", TxtYemekMalzeme.Text);
            sql.Parameters.AddWithValue("@p3", TxtYemekTarif.Text);
            sql.Parameters.AddWithValue("@p4", DropDown.SelectedValue);
            sql.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();

            //Kategori adet tetik
            SqlCommand command = new SqlCommand("update Tbl_Kategoriler set KategoriAdet = KategoriAdet+1 where kategoriid=@p1", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", DropDown.SelectedValue);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
                
        
        }
    }
}