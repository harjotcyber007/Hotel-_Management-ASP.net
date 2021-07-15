<%@ Page Language="C#" AutoEventWireup="true" CodeFile="desc1.aspx.cs" Inherits="desc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <h1 align="center"> DETAIL DESCRIPTION</h1>

        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Roomid" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Black" 
            BorderStyle="None" BorderWidth="2px" CellPadding="3" GridLines="Both" 
            RepeatColumns="3" onselectedindexchanged="DataList1_SelectedIndexChanged">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="399px" 
                    ImageUrl='<%# Eval("image") %>' Width="758px" />
                <br />
                Room Type:
                <asp:Label ID="roomtypeLabel" runat="server" Text='<%# Eval("roomtype") %>' />
                <br />
                <br />
                Description:
                <asp:Label ID="descriptionLabel" runat="server" 
                    Text='<%# Eval("description") %>' />
                <br />
                <br />
                Room Rent:
                <asp:Label ID="roomrentLabel" runat="server" Text='<%# Eval("roomrent") %>' />
                <br />
      <br />
       <a href='<%# Eval("Roomid", "Booking Room.aspx?a={0}") %>'> BOOK NOW </a>          <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [room table] WHERE ([Roomid] = @Roomid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Roomid" QueryStringField="a" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
