using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection con = new connection();
        FeedBack_Table ft = new FeedBack_Table();
        ft.Name = TextBox1.Text;
        ft.Message = TextBox2.Text;
        ft.Email = TextBox3.Text;
        ft.Mobile= TextBox4.Text;
        con.FeedBack_Tables.InsertOnSubmit(ft);
        con.SubmitChanges();
        Response.Redirect("Feedback Form.aspx");
       

    }
}