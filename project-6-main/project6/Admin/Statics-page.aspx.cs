using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project6 ; integrated security=SSPI");
            connect.Open();
            SqlCommand command1 = new SqlCommand("SELECT COUNT(id_donation)FROM donation  where id_category=1 and Accept=1;", connect);
            double tree = Convert.ToDouble(command1.ExecuteScalar());

            SqlCommand command2 = new SqlCommand("SELECT COUNT(id_donation)FROM donation  where id_category=2 and Accept=1;", connect);
            double seedling = Convert.ToDouble(command2.ExecuteScalar());

            SqlCommand command3 = new SqlCommand("SELECT COUNT(id_donation)FROM donation  where id_category=3 and Accept=1;", connect);
            double seed = Convert.ToDouble(command3.ExecuteScalar());

            SqlCommand commandD = new SqlCommand("SELECT COUNT(id_donation)FROM donation where  Accept=1;", connect);
            double total = Convert.ToDouble(commandD.ExecuteScalar());

            SqlCommand commandO = new SqlCommand("SELECT COUNT(id_order)FROM orders where  Accept=1;", connect);
            double totalO = Convert.ToDouble(commandO.ExecuteScalar());

            double treePercent = (tree / total) * 100;
            double seedlingPercent = (seedling / total) * 100;
            double seedPercent = (seed / total) * 100;


            double treeRound = Math.Round(treePercent, 1);
            double lingsRound = Math.Round(seedlingPercent, 1);
            double seedRound = Math.Round(seedPercent, 1);


            percent1.Attributes.Add("stroke-dasharray", $"{treePercent}, 100");
            firstPercent.InnerText = Convert.ToString(treeRound) + "%";


            percent2.Attributes.Add("stroke-dasharray", $"{seedlingPercent}, 100");
            secPercent.InnerText = Convert.ToString(lingsRound) + "%";

            percent3.Attributes.Add("stroke-dasharray", $"{seedPercent}, 100");
            thirdPercent.InnerText = Convert.ToString(seedRound) + "%";


            Label1.Text = Convert.ToString(total);
            Label2.Text = Convert.ToString(totalO);

        }
    }
}