<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rooms1.aspx.cs" Inherits="rooms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center"> ROOMS</h1>

        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Roomid" 
            DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="3" 
            BackColor="White" BorderColor="White" BorderStyle="None" 
            GridLines="Both" onselectedindexchanged="DataList1_SelectedIndexChanged" 
            Height="730px" Width="1574px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="315px" 
                    ImageUrl='<%# Eval("image") %>' Width="451px" />
                <br />
                roomtype:
                <asp:Label ID="roomtypeLabel" runat="server" Text='<%# Eval("roomtype") %>' />
                <br />
                <br />
                  <a href='<%# Eval("Roomid", "Room Description.aspx?a={0}") %>'> More Info</a>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        &nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [room table]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
