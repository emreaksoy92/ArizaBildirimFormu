using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.Security;
using System.Configuration;


namespace EntityFramework.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void ValidateUser(object sender, EventArgs e)
        {
            int userId = 0;
            string connectionString = "Data Source=ARGE_DEV2008;Initial Catalog=Northwind;Persist Security Info=True;User ID=emre;Password=emre";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                    cmd.Parameters.AddWithValue("@Password", Login1.Password);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                switch (userId)
                {
                    case -1:
                        Login1.FailureText = "Kullanıcı adı veya şifre yanlıştır.";
                        break;
                    case -2:
                        Login1.FailureText = "Hesap aktive edilmemiştir.";
                        break;
                    default:
                        {
                            Session["Username"] = Login1.UserName;
                            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                            break;
                        }
                }
            }
        }
       
    }
}
