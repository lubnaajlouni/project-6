using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Runtime.Remoting.Lifetime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            if (TextBox3.Text == "" && TextBox1.Text == "" && TextBox2.Text == "")
            {
                return;
            }

            else
            {

                MailMessage mail = new MailMessage();
                mail.To.Add("lubnaajlouni97@gmail.com");
                mail.From = new MailAddress($"{TextBox1.Text}");
                mail.Subject = "Contact";

                mail.Body = TextBox2.Text;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("lubnaajlouni97@gmail.com", "gbkqyqhyyvetsbzn");
                smtp.Send(mail);

                TextBox3.Text = "";
                TextBox1.Text = "";
                TextBox2.Text = "";

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass('' ,'Please log in first');", true);


            }
        }
    } }