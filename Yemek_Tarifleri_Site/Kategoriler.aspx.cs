using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand command = new SqlCommand("select * from Tbl_Kategoriler", baglan.sqlBaglanti());
            SqlDataReader read = command.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            //silme
            if (islem =="sil" ){
                SqlCommand sql = new SqlCommand("delete from tbl_Kategoriler where kategoriid=@p1", baglan.sqlBaglanti());
                sql.Parameters.AddWithValue("@p1", id);
                sql.ExecuteNonQuery();
                baglan.sqlBaglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
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
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values(@p1)", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
        }
    }
}