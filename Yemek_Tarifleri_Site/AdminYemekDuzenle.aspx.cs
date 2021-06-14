using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{   
    public partial class AdminYemekDuzenle : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("select *   from Tbl_Yemekler where Yemekid=@p1", baglan.sqlBaglanti());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader read = command.ExecuteReader();
                while (read.Read())
                {
                    TextBox1.Text = read[1].ToString();
                    TextBox2.Text = read[2].ToString();
                    TextBox3.Text = read[3].ToString();

                }
                baglan.sqlBaglanti().Close();




                if (Page.IsPostBack == false)
                {

                    //Kategori List
                    SqlCommand sql = new SqlCommand("Select * from tbl_Kategoriler", baglan.sqlBaglanti());
                    SqlDataReader read2 = sql.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";
                    DropDownList1.DataSource = read2;
                    DropDownList1.DataBind();

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        { //Yemek Güncelleme
            SqlCommand command = new SqlCommand("update Tbl_Yemekler set yemekad=@p1, yemekmalzeme=@p2, yemektarifi=@p3,kategoriid=@p4 where yemekid=@p5", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", TextBox3.Text);
            command.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            command.Parameters.AddWithValue("@p5", id);

            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
        
        
            //Kategori Sayısı tetikle
        
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update tbl_yemekler set durum=0", baglan.sqlBaglanti());
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {//Hepsini false yapar
            SqlCommand command = new SqlCommand("update tbl_yemekler set durum=0", baglan.sqlBaglanti());
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
            //Seçileni true yapar
            SqlCommand command2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", baglan.sqlBaglanti());
            command2.Parameters.AddWithValue("@p1", id);
            command2.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
        }
    }
}