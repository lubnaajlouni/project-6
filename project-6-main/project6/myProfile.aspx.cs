using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project6
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {


                SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6  ; integrated security=SSPI");
                connection.Open();


                string id = Convert.ToString(Session["id_user"]);
                //Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand comman = new SqlCommand($"select Email,PhoneNumber,UserName,Address,PasswordHash,img from AspNetUsers where Id='{id}'", connection);



                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {

                    name1.Text = sdr[2].ToString();

                    email.Text = sdr[0].ToString();
                    phone.Text = sdr[1].ToString();
                    username.Text = sdr[2].ToString();
                    location.Text = sdr[3].ToString();
                    img.Src = "pic/" + sdr[5].ToString();



                }
                connection.Close();

                SqlConnection connection2 = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6  ; integrated security=SSPI");
                connection2.Open();
                SqlCommand comman2 = new SqlCommand($"select Accept  from orders where id_user='{id}'", connection2);
                string potato = Convert.ToString(comman2.ExecuteScalar());
                string com = Convert.ToString(potato);


                Label1.Text = "No Orders to view";

                if (com == "True")
                {
                    Label1.Text = "We appreciate your supporting for environment please communicate with the donor phone number to take your order";
                }
                connection2.Close();

            }

        }

        protected void editinfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {

                e.Row.Cells[0].Text = "Name";
                e.Row.Cells[1].Text = "Donation Name";
                e.Row.Cells[2].Text = "Photo";
                e.Row.Cells[3].Text = "Quantity";
                e.Row.Cells[4].Text = "Donor Phone";


            }
        }
    }
}