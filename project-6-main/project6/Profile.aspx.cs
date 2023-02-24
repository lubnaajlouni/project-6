using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                //editvisible .Visible = false;
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6  ; integrated security=SSPI");
                connection.Open();

                //int id = 1;
                string id = Convert.ToString(Session["id_user"]);
                //Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand comman = new SqlCommand($"select Email,PhoneNumber,UserName,Address,PasswordHash from AspNetUsers where Id='{id}'", connection);



                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {

                    name1.Text = sdr[2].ToString();
                    ssname.Text = sdr[2].ToString();

                    email.Text = sdr[0].ToString();
                    phone.Text = sdr[1].ToString();
                    username.Text = sdr[2].ToString();
                    location.Text = sdr[3].ToString();



                }


                connection.Close();
            }
        }


        protected void editinfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("edituser.aspx");
        }
    }
}