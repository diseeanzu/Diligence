using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DiligenceDAO
{
    public  class DBhelper
    {
        public static int ExecuteNonQuery(string sql)
        {
            SqlConnection con = new SqlConnection("server=.;database=xiangmu;uid=sa;pwd=123");
            con.Open();
            SqlCommand com = new SqlCommand(sql, con);
            int a = com.ExecuteNonQuery();
            con.Close();
            return a;
        }

        public static DataTable SelectData(string sql)
        {
            SqlConnection con = new SqlConnection("server=.;database=xiangmu;uid=sa;pwd=123");
            con.Open();
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable table = new DataTable();
            da.Fill(table);
            con.Close();
            return table;
        }
    }
}
