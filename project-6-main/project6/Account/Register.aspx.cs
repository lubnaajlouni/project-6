using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using project6.Models;

namespace project6.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                //For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                string code = manager.GenerateEmailConfirmationToken(user.Id);
                string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");


                string email = Email.Text;
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                SqlCommand getId = new SqlCommand($"select Id from AspNetUsers where Email='{email}'", Con);
                string id = getId.ExecuteScalar().ToString();
                //string folderpath = Server.MapPath("Images/");
                //FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));
                //manager.AddToRole(user.Id, RadioButtonList1.SelectedValue);
                string query = $"update AspNetUsers set PhoneNumber='{Textphone.Text}',Address='{DropDownList1.SelectedItem}' where Id='{id}'";
                SqlCommand insetPersonalInfo = new SqlCommand(query, Con);
                insetPersonalInfo.ExecuteNonQuery();
                SqlCommand role_insert = new SqlCommand($"insert into AspNetUserRoles Values('{id}',{RadioButtonList1.SelectedValue})", Con);
                role_insert.ExecuteNonQuery();
                SqlCommand role_insertr = new SqlCommand($"update  AspNetUsers set role_id='{RadioButtonList1.SelectedValue}' where Id='{id}'", Con);
                role_insertr.ExecuteNonQuery();
                string roles = $"select RoleId from AspNetUserRoles where UserId='{id}' ";
                SqlCommand getroles = new SqlCommand(roles, Con);
                string role = getroles.ExecuteScalar().ToString();
                if (Int32.Parse(role) == 1)
                {
                    Response.Redirect("Statics-page.aspx");

                }
                else if (Int32.Parse(role) == 2)
                {
                    Session.Add("id_donor", id);
                    Response.Redirect("beneficiary.aspx");




                }
                else if (Int32.Parse(role) == 3)
                {
                    //Response.Redirect("beneficiary.aspx?id_donor=" + id);
                    string s = Convert.ToString(Session["donation"]);
                    Session.Add("id_user", id);
                    Response.Redirect($"Login.aspx?id_donation={s}");


                }
                else
                {

                }
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

                Con.Close();
                Response.Redirect("");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);


            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }






        }
    }
}