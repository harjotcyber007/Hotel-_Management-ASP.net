<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Package1.aspx.cs" Inherits="Aniversry_Package" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center"> &nbsp;PACKAGES</h1>

        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
            DataSourceID="SqlDataSource1" RepeatColumns="3" BackColor="White" 
            BorderColor="Black" BorderStyle="None" BorderWidth="2px" CellPadding="3" 
            GridLines="Both">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="266px" 
                    ImageUrl='<%# Eval("image1") %>' Width="460px" />
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
                 <a href='<%# Eval("id", "Package Desc.aspx?a={0}") %>'>  Click Here For More Info</a>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT [id], [PackageType], [image1], [Price] FROM [PackageTable]">
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
