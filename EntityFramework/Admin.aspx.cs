using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityInsertWeb;

namespace EntityFramework
{
    public partial class Admin : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            NewUser s = new NewUser(TbKullanıcıAdı.Text,TbIsim.Text,TbSoyİsim.Text,TbEmail.Text,TbŞifre.Text);           
            CustomerInsert a = new CustomerInsert(s);
            
            Label6.Visible = true;
            Label6.Text = "Bilgileriniz Kaydedilmiştir ! ";
            Reset1();
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            Reset1();
        }
        public void Reset1()
        {
            TbKullanıcıAdı.Text = "";
            TbIsim.Text = "";
            TbSoyİsim.Text = "";
            TbEmail.Text = "";
            TbŞifre.Text = "";
        }

       
       
    }
}