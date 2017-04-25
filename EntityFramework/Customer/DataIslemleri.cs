using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace EntityFramework
{
    public class DataIslemleri
    {
        string connectionString = "Data Source=ARGE_DEV2008;Initial Catalog=Northwind;Persist Security Info=True;User ID=emre;Password=emre"; 
        
        public DataSet GetDataSet(string sql)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = sql;
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();

            con.Open();
            da.Fill(ds);
            con.Close();

            return ds;
        }

        public DataTable GetDataTable(string sql)
        {
            var ds = GetDataSet(sql);
            return ds.Tables[0];
        }

        public DataRow GetDataRow(string sql)
        {
            var dt = GetDataTable(sql);
            return dt.Rows[0];
        }

        public int ExecuteNonQuery(string sql)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = sql;
            con.Open();      
            return cmd.ExecuteNonQuery();
            con.Close();
        }
        
        
    }
}