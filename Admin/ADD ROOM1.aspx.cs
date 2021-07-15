using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ADD_ROOM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection con = new connection();
        room_table rt = new room_table();
        var v1 = from temp in con.SystemTables where temp.id==1 select temp;

        rt.roomtype = TextBox1.Text;
        rt.description = TextBox2.Text;
        rt.roomrent = TextBox3.Text;
        rt.image = "~/images/Room/" + v1.First().ImageId + ".jpeg";
        FileUpload1.SaveAs(MapPath(rt.image));
        v1.First().ImageId = v1.First().ImageId + 1;
        con.room_tables.InsertOnSubmit(rt);
        con.SubmitChanges();
        Response.Redirect("ADD ROOM.aspx");


    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}