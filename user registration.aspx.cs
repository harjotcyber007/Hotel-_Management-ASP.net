using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection con = new connection();
        User_Registration_Table ut = new User_Registration_Table();
        ut.Username = TextBox1.Text;
        ut.password = TextBox2.Text;
        ut.Email = TextBox3.Text;
        ut.mobile = TextBox4.Text;
        User_Login_Table u = new User_Login_Table();
        u.username = TextBox1.Text;
        u.password = TextBox2.Text;
        con.User_Login_Tables.InsertOnSubmit(u);
        con.User_Registration_Tables.InsertOnSubmit(ut);
        con.SubmitChanges();
        Response.Redirect("user registration.aspx");
       
    }
}