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
    public class NewUser{

       
        private string _email;
        private string _pw;
        private string _accountName;
        
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public string pw
        {
            get { return _pw; }
            set { _pw = value; }
        }
        public string AccountName
        {
            get { return _accountName; }
            set { _accountName = value; }
        }

        public NewUser(string accountname, string email, string pw)
        {
            _accountName = accountname;
            _email = email;
            _pw = pw;         
        }

    }
}