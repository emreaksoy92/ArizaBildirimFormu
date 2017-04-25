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
    public class Customer
    {
        private string _AccountName;
        private int _status;
        private string _ProblemName;
        private string _ProblemType;
        private string _date;
        private string _time;
        private string _comment;
        private string _problemCategory;
        private string _Urgency;
        
        public string AccountName
        {
            get { return _AccountName; }
            set { _AccountName = value; }
        }
        public int Status
        {
            get { return _status; }
            set { _status = value; }
        }
        public string ProblemName
        {
            get { return _ProblemName; }
            set { _ProblemName = value; }
        }
        public string ProblemType
        {
            get { return _ProblemType; }
            set { _ProblemType = value; }
        }
        public string Date
        {
            get { return _date; }
            set { _date = value; }
        }
        public string Time
        {
            get { return _time; }
            set { _time = value; }
        }
        public string Comment
        {
            get { return _comment; }
            set { _comment = value; }
        }
        public string ProblemCategory
        {
            get { return _problemCategory;}
            set { _problemCategory = value; }
        }
        public string Urgency
        {
            get { return _Urgency; }
            set { _Urgency = value; }
        }
              

        public Customer(string category,string AccountName,string urgency, int status, string pname, string ptype, string date, string time, string commment)
        {
            _Urgency = urgency;
            _problemCategory = category;
            _AccountName = AccountName;                 
            _status = status;
            _ProblemName = pname;
            _ProblemType = ptype;
            _date = date;
            _time = time;
            _comment = commment;
            
        }

       

    }
}