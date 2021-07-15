<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="Package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1 align="center"> &nbsp;PACKAGE</h1>

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
                 <a href='<%# Eval("id", "user login.aspx?a={0}") %>'>  Click Here For More Info</a>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT [id], [PackageType], [image1], [Price] FROM [PackageTable]">
        </asp:SqlDataSource>

    </div>
</asp:Content>

