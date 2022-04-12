using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace sieuthimini
{
    public class DataProvider
    {
        string strCon = WebConfigurationManager.AppSettings["connectionString"];

        public SqlConnection cnn = new SqlConnection();

        public DataTable dtTable(string sql)
        {
            DataTable dt = new DataTable();

            cnn.ConnectionString = strCon;
            cnn.Open();
            SqlDataAdapter Adapter = new SqlDataAdapter(sql, cnn);

            Adapter.Fill(dt);

            cnn.Close();

            return dt;
        }
    }
}