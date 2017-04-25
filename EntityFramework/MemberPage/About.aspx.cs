using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.Security;
using System.Net.Mail;
using System.Web.SessionState;
using System.Net;
using System.Net.Configuration;
using System.Data;

namespace EntityFramework
{
    public partial class About : System.Web.UI.Page
    {
        DataIslemleri di = new DataIslemleri();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            MusteriListesi();
        }
        public void MusteriListesi()
        {
            var dt = di.GetDataTable("SELECT * FROM ea_db1");
            GridView1.DataSource = dt;
            GridView1.DataBind();      
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int num = Convert.ToInt32(e.CommandArgument);
                var userId = GridView1.Rows[num].Cells[1].Text;
                Session["userId"] = userId;
                var userName = GridView1.Rows[num].Cells[2].Text;             
                Session["userName"] = userId;
                
           }
        }
        public void Onayla_Click(object sender, EventArgs e)
        {
                    
            var Status = StatusRb.SelectedItem.Value;
            string userId = Session["userId"].ToString();
            string userName = Session["userName"].ToString();
            var sql = "Update  ea_db1 set [status] = '" + Status + "', [comment] ='" + TbAciklama1.Text + "' Where [Id] = '" + userId + "'";
            if (Status == "1")
            { 
                var dr =di.GetDataRow(" Select * From Users Where Username = '"+userName+"'");
                string email = dr["Email"].ToString();

                using (MailMessage mm = new MailMessage("emrexq@gmail.com","email"))
                {
                    mm.Subject = "Sorun Giderilmesi";
                    string body = "Merhaba " + userName.Trim() + ",";
                    body += "<br /><br />Sisteme girdiğiniz hatanız çözümlenmiştir.";              
                    body += "<br /><br />İyi Günler.";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtpClient = new SmtpClient();
                    smtpClient.Send(mm);        
               }
        

            }
            di.ExecuteNonQuery(sql);
            MusteriListesi();
        }




      
    }
}
