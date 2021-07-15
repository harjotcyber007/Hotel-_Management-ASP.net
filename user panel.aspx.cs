using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Literal1.Text = Convert.ToString(Session["USERNAME"]);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
}