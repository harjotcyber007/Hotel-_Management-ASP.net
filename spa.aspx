<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="spa.aspx.cs" Inherits="spa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center"> SPA</h1>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="3">
        <ItemTemplate>
            <br />
            <asp:Image ID="Image1" runat="server" Height="301px" 
                ImageUrl='<%# Eval("image") %>' Width="470px" />
            <br />
            &nbsp;Spa type :<asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
            <br />
            &nbsp;Price(Rs) :<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
             <a href='<%# Eval("id", "user login.aspx?a={0}") %>'> More Info</a>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT * FROM [Spa Table]">
    </asp:SqlDataSource>
</asp:Content>

