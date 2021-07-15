<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rooms.aspx.cs" Inherits="rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <h1 align="center"> Rooms</h1>

        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Roomid" 
            DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="3" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            GridLines="Both" onselectedindexchanged="DataList1_SelectedIndexChanged" 
            Height="730px" Width="1259px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="268px" 
                    ImageUrl='<%# Eval("image") %>' Width="365px" />
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
</asp:Content>

