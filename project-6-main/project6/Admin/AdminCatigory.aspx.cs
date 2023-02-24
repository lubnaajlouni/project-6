using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile && TextBox1.Text != "" && TextBox2.Text != "")
            {
                SqlDataSource1.InsertParameters["name_category"].DefaultValue = TextBox1.Text;
                SqlDataSource1.InsertParameters["description_category"].DefaultValue = TextBox2.Text;
                FileUpload2.SaveAs(System.IO.Path.Combine(Server.MapPath("pic"), FileUpload2.FileName));
                SqlDataSource1.InsertParameters["img_category"].DefaultValue = "~/pic/" + FileUpload2.FileName;
                SqlDataSource1.Insert();

                TextBox1.Text = "";
                TextBox1.Text = "";
            }
        }



        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {

            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;

            fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("pic"), fileUpload.FileName));
            if (fileUpload.HasFile)
            {
                SqlDataSource1.UpdateParameters["img_category"].DefaultValue = "~/pic/" + fileUpload.FileName;

                SqlDataSource1.Update();
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.ForeColor = System.Drawing.Color.White;
                //e.Row.BackColor = System.Drawing.Color.DarkGreen;
                e.Row.Cells[0].Text = "";
                e.Row.Cells[1].Text = "ID";
                e.Row.Cells[2].Text = "Name";
                e.Row.Cells[3].Text = "Image";
                e.Row.Cells[4].Text = "Description";
            }
            e.Row.Cells[0].ForeColor = System.Drawing.Color.DarkOrange;
        }
    }
}