using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project6
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                //editvisible .Visible = false;
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6  ; integrated security=SSPI");
                connection.Open();


                string folderPath = Server.MapPath("~/pic/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(folderPath);
                }
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));


                string id = Convert.ToString(Session["id_user"]);


                SqlCommand comman = new SqlCommand($"select Email,PhoneNumber,UserName,Address,img from AspNetUsers where Id='{id}'", connection);



                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {

                    name1.Text = sdr[2].ToString();


                    uemail.Text = sdr[0].ToString();
                    uphone.Text = sdr[1].ToString();
                    uname.Text = sdr[2].ToString();
                    //ulocation.Text = sdr[3].ToString();

                    img.Src = "pic/" + sdr[4].ToString();


                }


                connection.Close();
            }



        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            //int id = Convert.ToInt32(Request.QueryString["id"]);
            SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6  ; integrated security=SSPI");
            connection.Open();

            string id = Convert.ToString(Session["id_user"]);
            string drop = DropDownList1.SelectedValue;

            string filelocation = "";
            if (FileUpload1.HasFile)
            {
                string fullPath = Server.MapPath("~/pic/") + FileUpload1.FileName;
                filelocation = FileUpload1.FileName;
                FileUpload1.SaveAs(fullPath);

                string query = $"update AspNetUsers set UserName='{uname.Text}',Email='{uemail.Text}',PhoneNumber='{uphone.Text}',Address='{drop}',img='{FileUpload1.FileName}' where Id='{id}'";
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                connection.Close();

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

            }

            else
            {
                string query = $"update AspNetUsers set UserName='{uname.Text}',Email='{uemail.Text}',PhoneNumber='{uphone.Text}',Address='{drop}' where Id='{id}'";
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                connection.Close();

            }

            Response.Redirect("myProfile.aspx");




        }
    }
}