using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Session["id_user"] != null)
            {
                string user_id = Convert.ToString(Session["id_user"]);
                string category_id = Convert.ToString(Session["category"]);
                string donation_id = Request.QueryString["donation_id"];
                //string user_id = "22f240fd-a834-421a-9197-95a7088c5936";
                //string category_id = "1";
                string quantity = county.Value;
                Session["quantity"] = quantity;
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6 ; integrated security=SSPI");
                connection.Open();
                SqlCommand newtree = new SqlCommand($"insert INTO orders (id_user,id_donation,id_category,quantity) VALUES('{user_id}','{donation_id}','{category_id}','{quantity}')", connection);
                newtree.ExecuteNonQuery();
                connection.Close();
                //string message = " your request is on progress!";
                //string script = "alert('" + message + "');";
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass('' ,'Please log in first');", true);



            }
            else
            {
                string donation_id = Request.QueryString["donation_id"];
                Response.Redirect($"~/Account/Login.aspx?single=1&donation_id={donation_id}");
            }





        }
    }
}