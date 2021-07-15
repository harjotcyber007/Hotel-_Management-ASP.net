<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="spa descripition.aspx.cs" Inherits="spa_descripition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h1 align="center"> SPA DESCRIPTION</h1>



    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Black" 
        BorderStyle="None" BorderWidth="2px" CellPadding="3" GridLines="Both" 
        RepeatColumns="1">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <br />
            <asp:Image ID="Image1" runat="server" Height="359px" 
                ImageUrl='<%# Eval("image") %>' Width="801px" />
            <br />
            <br />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' />
            <br />
            <br />
            <br />
             <a href='<%# Eval("id", "spa booking.aspx?a={0}") %>'> Click Here to book</a>
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [Description], [image], [id] FROM [Spa Table] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="a" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>



</asp:Content>

