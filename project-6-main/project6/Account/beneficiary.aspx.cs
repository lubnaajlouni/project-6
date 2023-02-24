using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6.Account
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string id_doner = Convert.ToString(Session["id_donor"]);

            if (!Directory.Exists(Server.MapPath("~/pic/")))
            {
                Directory.CreateDirectory(Server.MapPath("~/pic/"));
            }

            FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            SqlCommand newtree = new SqlCommand($"insert INTO donation (name_donation,description_donation,quantity_donation,img_donation,id_category,id_donor) VALUES('{Pname.Text}','{Pdesc.Text}','{Pprice.Text}','{FileUpload1.FileName.ToString()}',{DropDownList1.SelectedValue},'{id_doner}') ", Con);
            newtree.ExecuteNonQuery();
            //get id_donation
            string name = Pname.Text;
            SqlCommand getId = new SqlCommand($"select id_donation from donation where name_donation='{name}'", Con);
            string id = getId.ExecuteScalar().ToString();

            Con.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('successfull', 'Thank you for Donation', 'success')", true);

            //Response.Redirect("homepage.aspx");
        }
    }
}