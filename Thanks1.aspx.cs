using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thnaks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Literal1.Text = Convert.ToString(Session["bid"]);
    }
}