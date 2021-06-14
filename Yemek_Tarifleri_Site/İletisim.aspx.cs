using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class İletisim : System.Web.UI.Page
    {
        SqlClass baglan = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen, MesajBaslik,MesajMail, Mesajicerik) values(@p1,@p2,@p3,@p4)", baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@p1", TxtGonderen.Text);
            command.Parameters.AddWithValue("@p2", TxtKonu.Text);
            command.Parameters.AddWithValue("@p3", TxtMail.Text);
            command.Parameters.AddWithValue("@p4", TxtIcerik.Text);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();

        }
    }
}