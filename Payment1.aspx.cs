using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Literal1.Text = Convert.ToString(Session["bid"]);
        Literal2.Text = Convert.ToString(Session["amt"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection con = new connection();
        payment pt = new payment();
       
        pt.booking_id = Convert.ToInt32(Literal1.Text);
        pt.amount = Convert.ToInt64(Literal2.Text);
        pt.cardtype = DropDownList1.SelectedValue;
        pt.cardnumber = Convert.ToInt64( TextBox1.Text);
        pt.nameoncard = TextBox2.Text;
        pt.expdate = TextBox3.Text;
        pt.cvv_code = Convert.ToInt32(TextBox4.Text);
        con.payments.InsertOnSubmit(pt);
        con.SubmitChanges();
        Response.Redirect("Thanks.aspx");
    }
}