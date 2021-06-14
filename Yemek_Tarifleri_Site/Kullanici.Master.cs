using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlClass bgl = new SqlClass(); //Bağlantı için sınıf çağırıp bağlanıyoruz
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Kategoriler",bgl.sqlBaglanti()); //Sorgumuzu gönderiyoruz
            SqlDataReader read = command.ExecuteReader(); //Okuma
            DataList1.DataSource = read; //Datalistin veri kaynağı okuduğu değerler
            DataList1.DataBind(); //
        }
    }
}