using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection con = new connection();
        var v1 = from temp in con.User_Login_Tables where temp.username == TextBox2.Text && temp.password == TextBox2.Text select temp;
        if (v1.Count() != 0)
        {

           var v2 = from temp in con.room_tables where temp.Roomid== Convert.ToInt32(Request.QueryString["a"]) select temp;
        
            Session["USERNAME"] = Convert.ToString(TextBox2.Text);
            Session["rid"] = Convert.ToInt32(v2.First().Roomid);

            Response.Redirect("user panel.aspx");

        }
        else
        {
            Literal1.Text = " INVALID USERNAME/PASSWORD";
        }


    }
}