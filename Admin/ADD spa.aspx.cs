using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ADD_spa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection con = new connection();
        Spa_Table st = new Spa_Table();
        var v1 =   from temp in con.SystemTables where temp.id==1 select temp;
        st.type = TextBox1.Text;
        st.Price = Convert.ToInt64(TextBox2.Text);
        st.Description = TextBox3.Text;
        st.image = "~/spa images/" + v1.First().ImageId + ".jpeg";
        v1.First().ImageId = v1.First().ImageId+ 1;
        FileUpload1.SaveAs(MapPath(st.image));
        con.Spa_Tables.InsertOnSubmit(st);
        con.SubmitChanges();
        Response.Redirect("ADD spa.aspx");

    }
}