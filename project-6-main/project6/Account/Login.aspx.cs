using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using project6.Models;

namespace project6.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {

            try
            {

                if (IsValid)
                {
                    // Validate the user password
                    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                    var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                    // This doen't count login failures towards account lockout
                    // To enable password failures to trigger lockout, change to shouldLockout: true
                    var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                    //switch (result)
                    //{
                    //    case SignInStatus.Success:
                    //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                    //        break;
                    //    case SignInStatus.LockedOut:
                    //        Response.Redirect("/Account/Lockout");
                    //        break;
                    //    case SignInStatus.RequiresVerification:
                    //        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                    //                                        Request.QueryString["ReturnUrl"],
                    //                                        RememberMe.Checked),
                    //                          true);
                    //        break;
                    //    case SignInStatus.Failure:
                    //    default:
                    //        FailureText.Text = "Invalid login attempt";
                    //        ErrorMessage.Visible = true;
                    //        break;
                    //}


                }
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();

                string id_don = Email.Text.ToString();
                SqlCommand getId = new SqlCommand($"select Id from AspNetUsers where Email='{id_don}'", Con);
                string id = getId.ExecuteScalar().ToString();

                SqlCommand getIdrole = new SqlCommand($"select role_id from AspNetUsers where Email='{Email.Text}'", Con);
                string idrole = getIdrole.ExecuteScalar().ToString();

                if (Int32.Parse(idrole) == 1)
                {
                    Response.Redirect("~/Admin/Statics-page.aspx");


                }
                else if (Int32.Parse(idrole) == 2)
                {

                    //Response.Redirect("beneficiary.aspx?id_donor=" + id);
                    Session.Add("id_donor", id);
                    Response.Redirect("beneficiary.aspx");


                }
                else if (Int32.Parse(idrole) == 3)
                {
                    Session.Add("id_user", id);
                    if (Request.QueryString["single"] != null)
                    {
                        string donation_id = Request.QueryString["donation_id"];
                        Session["donation"] = donation_id;
                        Response.Redirect($"~/singleDonation.aspx?donation_id={donation_id}");
                    }

                    Response.Redirect("~/Default.aspx");

                }
                else
                {

                }
            }
            catch (Exception)
            {
                Response.Write("");
            }
        }
    }
}