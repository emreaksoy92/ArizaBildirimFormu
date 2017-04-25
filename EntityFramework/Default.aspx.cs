using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityFramework;
using System.Web.Configuration;
using System.Web.Security;


namespace EntityFramework
{
    public partial class _Default : System.Web.UI.Page
    {
        DataIslemleri di = new DataIslemleri();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {                 
            string accountname = Session["Username"].ToString();
          
            Customer s = new Customer(DlKategori.SelectedValue, accountname, RbAcil.SelectedItem.Value,0, TbArıza.Text, DlArızaTipi.SelectedValue, Calendar1.SelectedDate.ToString(), DlSaat.SelectedValue, TbAçıklama.Text);
            CustomerUpdate a = new CustomerUpdate(s);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TbAçıklama.Text = "";
            TbArıza.Text = "";
            DlArızaTipi.SelectedValue = "Seçiniz";
            DlKategori.SelectedValue = "Seçiniz";
            DlSaat.SelectedValue = "08:00";
        }
        
    }
}
