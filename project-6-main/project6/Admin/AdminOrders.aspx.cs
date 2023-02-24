using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {

                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "User Name";
                e.Row.Cells[2].Text = "Donation Name";
                e.Row.Cells[3].Text = "Photo";
                e.Row.Cells[4].Text = "Quantity";
                e.Row.Cells[5].Text = "Category";
            }
        }
    }
}