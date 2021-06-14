using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["Kategoriid"];
            SqlCommand command = new SqlCommand("select * from Tbl_Yemekler where kategoriid=@p1", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", kategoriId);
            SqlDataReader read = command.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();
        }
    }
}