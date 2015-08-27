using System;
using System.Net.Mail;

namespace Mike_Blog
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("mikegauci@gmail.com");
                mailMessage.To.Add("mikegauci@gmail.com");
                mailMessage.Subject = txtSubject.Text;

                mailMessage.Body = "<b>Sender Name : </b>" + txtName.Text + "<br/>"
                    + "<b>Sender Email : </b>" + txtEmail.Text + "<br/>"
                    + "<b>Comments : </b>" + txtComments.Text + "<br/>";
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("mikegauci@gmail.com", "739461777");
                smtpClient.Send(mailMessage);

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Thank you for contacting us";

                txtName.Enabled = false;
                txtEmail.Enabled = false;
                txtComments.Enabled = false;
                txtSubject.Enabled = false;
                Button1.Enabled = false;
            }
        }
    }
}