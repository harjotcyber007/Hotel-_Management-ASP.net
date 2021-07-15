<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Package Desc1.aspx.cs" Inherits="Package" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center"> PACKAGE DESCRIPTION</h1>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Black" 
        BorderStyle="None" BorderWidth="2px" CellPadding="3" GridLines="Both" 
        RepeatColumns="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="325px" 
                ImageUrl='<%# Eval("image1") %>' Width="448px" />
            <br />
            PackageType:
            <asp:Label ID="PackageTypeLabel" runat="server" 
                Text='<%# Eval("PackageType") %>' />
            <br />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" 
                Text='<%# Eval("description") %>' />
            <br />
            <br />
             <a href='<%# Eval("id", "Package Booking.aspx?a={0}") %>'> Click Here For Booking </a>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [id], [PackageType], [image1], [Price], [description] FROM [PackageTable] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="a" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
