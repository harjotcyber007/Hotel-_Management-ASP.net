using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Package_Booking : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        var v1 = from temp in con.PackageTables where temp.id == Convert.ToInt32(Request.QueryString["a"]) select temp;
        Literal1.Text = v1.First().PackageType;
        Literal2.Text =  Convert.ToString( v1.First().Price);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        var v1 = from temp in con.SystemTables where temp.id == 1 select temp;
        PackageBookingTable pt = new PackageBookingTable();
        pt.booking_id = Convert.ToInt32(v1.First().BookingId);
        Session["bid"] = Convert.ToInt32(v1.First().BookingId);
        v1.First().BookingId = v1.First().BookingId + 1;
        Session["amt"] = Convert.ToString(Literal2.Text);
        pt.name = TextBox1.Text;
        pt.mobile = (TextBox2.Text);
        pt.email = TextBox3.Text;
        pt.city = TextBox5.Text;
        pt.age = TextBox6.Text;
        pt.gender = DropDownList1.SelectedValue;
        pt.date = TextBox7.Text;
        pt.time = TextBox8.Text;
        con.PackageBookingTables.InsertOnSubmit(pt);
        con.SubmitChanges();
        Response.Redirect("Payment.aspx");

    }
}