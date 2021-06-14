using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public partial class TarifOner : System.Web.UI.Page
    {

        SqlClass baglan = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void TxtTarifKisi_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnTarif_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Tarifler(TarifAd, TarifMalzeme,Tarifyapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)",baglan.sqlBaglanti());
            command.Parameters.AddWithValue("@t1", TxtTarif1.Text);
            command.Parameters.AddWithValue("@t2", TxtTarifMalzeme.Text);
            command.Parameters.AddWithValue("@t3", TxtTarifYap.Text);
            command.Parameters.AddWithValue("@t4", FileUpResim.FileName);
            command.Parameters.AddWithValue("@t5", TxtTarifKisi.Text);
            command.Parameters.AddWithValue("@t6", TxtTarifEMail.Text);
            command.ExecuteNonQuery();
            baglan.sqlBaglanti().Close();
            Response.Write("Tarifiniz Alınmıştır.");



        }
    }
}