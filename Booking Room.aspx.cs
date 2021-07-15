using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Booking_Room : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        var v1 = from temp in con.room_tables where temp.Roomid == Convert.ToInt32(Session["rid"]) select temp;
        Literal1.Text = Convert.ToString(v1.First().roomtype);
        Literal2.Text = Convert.ToString(v1.First().roomrent);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        room_booking rb = new room_booking();
        var v1 = from temp in con.SystemTables where temp.id == 1 select temp;
        rb.name = TextBox1.Text;
        rb.booking_id = Convert.ToInt32(v1.First().BookingId);
        Session["bid"] = v1.First().BookingId;
        Session["amt"] = Literal2.Text;

        v1.First().BookingId = v1.First().BookingId + 1;
        rb.mobile = Convert.ToInt64(TextBox2.Text);
        rb.email_id = TextBox3.Text;
        rb.city = TextBox5.Text;
        rb.room = Literal1.Text;
        rb.noofrooms = Convert.ToInt32(DropDownList1.SelectedValue);
        rb.noofperson = Convert.ToInt32(DropDownList2.SelectedValue);
        rb.age = Convert.ToInt32(TextBox6.Text);
        rb.idproof = "~/Images/idproof/" + v1.First().ImageId + ".jpeg";
        v1.First().ImageId = v1.First().ImageId + 1;
        rb.gender = DropDownList3.SelectedValue;
        rb.date = TextBox7.Text;
        rb.time = TextBox8.Text;
        rb.Status = "pending";
        con.room_bookings.InsertOnSubmit(rb);
        con.SubmitChanges();
        Response.Redirect("Payment.aspx");

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}