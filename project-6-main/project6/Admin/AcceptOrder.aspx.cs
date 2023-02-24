using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class AcceptReject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id_order"];
            string id2 = Request.QueryString["id_donation"];

            SqlConnection con = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project6 ; integrated security=SSPI");
            con.Open();
            SqlCommand comm = new SqlCommand($"update orders set Accept=1 WHERE id_order = '{id}'", con);
            comm.ExecuteNonQuery();
            SqlCommand comm2 = new SqlCommand($"select quantity_donation from donation where id_donation='{id2}'", con);
            int q = Convert.ToInt32(comm2.ExecuteScalar());
            int quntity = Convert.ToInt32(Session["quantity"]);
            int result = q - quntity;
            if (result < 1)
            {
                SqlCommand don = new SqlCommand($"update donation set Available=0 WHERE id_donation = '{id2}'", con);

                don.ExecuteNonQuery();
            }
            else
            {
                SqlCommand comm3 = new SqlCommand($"update donation set quantity_donation={result} where id_donation='{id2}'", con);
                comm3.ExecuteNonQuery();
            }
            con.Close();

            Response.Redirect("OrdersRequests.aspx");
        }
    }
}