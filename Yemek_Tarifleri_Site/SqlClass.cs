using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Site
{
    public class SqlClass
    {
        public SqlConnection sqlBaglanti()
        {
            //Veritabanına bağlanma
            SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-H79DC8LN\SQLEXPRESS;Initial Catalog=Dbo_Yemektarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}