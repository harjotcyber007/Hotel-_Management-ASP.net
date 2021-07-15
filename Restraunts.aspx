<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Restraunts.aspx.cs" Inherits="Restraunts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <h1 align="center"> RESTAURANT TABLE </h1>
        &nbsp;<asp:DataList 
            ID="DataList1" runat="server" BackColor="White" 
                BorderColor="Black" BorderStyle="None" BorderWidth="2px" CellPadding="3" 
                DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Both" 
                RepeatColumns="3" 
            onselectedindexchanged="DataList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
            HorizontalAlign="Center">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="362px" 
                    ImageUrl='<%# Eval("image1") %>' Width="637px" />
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
</asp:Content>

