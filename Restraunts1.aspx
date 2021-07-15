<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Restraunts1.aspx.cs" Inherits="Restraunts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center"> RESTAURANT TABLE </h1>
        &nbsp;<asp:DataList 
            ID="DataList1" runat="server" BackColor="White" 
                BorderColor="Black" BorderStyle="None" BorderWidth="2px" CellPadding="3" 
                DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Both" 
                RepeatColumns="3" 
            onselectedindexchanged="DataList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="317px" 
                    ImageUrl='<%# Eval("image1") %>' Width="447px" />
                <br />
                ResturantType:
                <asp:Label ID="ResturantTypeLabel" runat="server" 
                    Text='<%# Eval("ResturantType") %>' />
                <br />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                <br />
                 <a href='<%# Eval("id", "Restauranent Booking.aspx?a={0}") %>'> Click Here For Booking </a>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            0<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
                SelectCommand="SELECT [ResturantType], [image1], [Price], [id] FROM [ResturantTable]">
            </asp:SqlDataSource>
&nbsp;
    </div>
    </form>
</body>
</html>
