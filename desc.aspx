<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="desc.aspx.cs" Inherits="desc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>
   <h1 align="center"> DETAIL DESCRIPTION</h1>

        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Roomid" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
            RepeatColumns="3">
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="Black" BackColor="#EEEEEE" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="399px" 
                    ImageUrl='<%# Eval("image") %>' Width="758px" />
                <br />
                Room Type:
                <asp:Label ID="roomtypeLabel" runat="server" Text='<%# Eval("roomtype") %>' />
                <br />
                <br />
                Description:
                <asp:Label ID="descriptionLabel" runat="server" 
                    Text='<%# Eval("description") %>' />
                <br />
                <br />
                Room Rent:
                <asp:Label ID="roomrentLabel" runat="server" Text='<%# Eval("roomrent") %>' />
                <br />
      <br />
       <a href='<%# Eval("Roomid", "Booking Room.aspx?a={0}") %>'> BOOK NOW </a>          <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [room table] WHERE ([Roomid] = @Roomid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Roomid" QueryStringField="a" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

