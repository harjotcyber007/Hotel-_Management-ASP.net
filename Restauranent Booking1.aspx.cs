using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restauranent_Booking : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

        var v2 = from temp in con.ResturantTables where temp.id== Convert.ToInt32(Request.QueryString["a"])  select temp;
        Literal2.Text=  v2.First().ResturantType;
        Literal1.Text = Convert.ToString( v2.First().Price);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        ResturantBookingTable rt = new ResturantBookingTable();
        var v1 = from temp in con.SystemTables where temp.id == 1 select temp;
        Session["bid"] = Convert.ToString(v1.First().BookingId);
        rt.booking_id = Convert.ToInt32(v1.First().BookingId);
        rt.Resturantname = Literal1.Text;
        v1.First().BookingId = v1.First().BookingId + 1;
        rt.name = TextBox1.Text;
        rt.mobile = TextBox2.Text;
        rt.email = TextBox3.Text;
        rt.gender = DropDownList1.SelectedValue;
        rt.age = TextBox5.Text;
        rt.city = TextBox6.Text;
        rt.date = TextBox7.Text;
        Session["amt"] = Literal1.Text;
        rt.time = TextBox8.Text;
        con.ResturantBookingTables.InsertOnSubmit(rt);
        con.SubmitChanges();
        Response.Redirect("Payment.aspx");
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}