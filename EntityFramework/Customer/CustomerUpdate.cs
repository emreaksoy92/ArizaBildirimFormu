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
    public class CustomerUpdate
    {
        public CustomerUpdate(Customer s)
        {
            DataIslemleri di = new DataIslemleri();
            var sql = "Insert Into ea_db1 Values ('"+s.AccountName +"','"+s.Status+"','"+s.ProblemName+"','"+s.ProblemCategory+"','"+s.ProblemType+"','"+s.Date+"','"+s.Time+"','"+s.Comment+"','"+s.Urgency+"')";
            di.ExecuteNonQuery(sql);
        }     
    }

    public class CustomerInsert
    {
        public CustomerInsert(NewUser s)
        {
            DataIslemleri di = new DataIslemleri();
            var sql = "INSERT INTO Users VALUES('" + s.AccountName + "','" + s.pw + "','" + s.Email + "')";
            di.ExecuteNonQuery(sql);
        }   
    }

}