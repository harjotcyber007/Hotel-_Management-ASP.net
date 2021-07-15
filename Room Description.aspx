<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Room Description.aspx.cs" Inherits="Room_Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Roomid" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Black" 
            BorderStyle="None" BorderWidth="2px" CellPadding="3" GridLines="Both" 
            RepeatColumns="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="403px" 
                    ImageUrl='<%# Eval("image") %>' Width="591px" />
                <br />
                Room Type:
                <asp:Label ID="roomtypeLabel" runat="server" Text='<%# Eval("roomtype") %>' />
                <br />
                Description:
                <asp:Label ID="descriptionLabel" runat="server" 
                    Text='<%# Eval("description") %>' />
                <br />
                Room Rent:
                <asp:Label ID="roomrentLabel" runat="server" Text='<%# Eval("roomrent") %>' />
                <br />
                  <a href='<%# Eval("Roomid", "user login.aspx?a={0}") %>'> Book Now</a>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT [Roomid], [roomtype], [description], [roomrent], [image] FROM [room table] WHERE ([Roomid] = @Roomid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Roomid" QueryStringField="a" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>

