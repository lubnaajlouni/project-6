using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Register.aspx");
        }
        protected void btn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Register.aspx");
        }
        protected void btn3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Register.aspx");
        }
        protected void btn4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Register.aspx");
        }

    }
}