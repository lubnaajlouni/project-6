using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class Edit_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                //editvisible .Visible = false;
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6  ; integrated security=SSPI");
                connection.Open();

                string id = Convert.ToString(Session["id_user"]);

                SqlCommand comman = new SqlCommand($"select Email,PhoneNumber,UserName,Address,PasswordHash from AspNetUsers where Id='{id}'", connection);



                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {

                    name1.Text = sdr[2].ToString();
                    ssname.Text = sdr[2].ToString();

                    uemail.Text = sdr[0].ToString();
                    uphone.Text = sdr[1].ToString();
                    uname.Text = sdr[2].ToString();
                    ulocation.Text = sdr[3].ToString();


                    pass.Text = sdr[4].ToString();
                }


                connection.Close();
            }


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Convert.ToString(Session["id_user"]);

            //int id = Convert.ToInt32(Request.QueryString["id"]);
            SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6  ; integrated security=SSPI");
            connection.Open();
            string query = $" update AspNetUsers set UserName='{uname.Text}',Email='{uemail.Text}',PhoneNumber='{uphone.Text}',Address='{ulocation.Text}',PasswordHash='{pass.Text}'  where Id ={id}";
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
        }
    }
}