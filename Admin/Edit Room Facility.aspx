<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit Room Facility.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1 align="center"> EDIT ROOM FACILITY </h1>

        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="facility_id" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." Height="423px" 
            Width="1279px" style="margin-top: 0px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="facility_id" HeaderText="facility_id" 
                    ReadOnly="True" SortExpression="facility_id" />
                <asp:BoundField DataField="room_id" HeaderText="room_id" 
                    SortExpression="room_id" />
                <asp:BoundField DataField="facility" HeaderText="facility" 
                    SortExpression="facility" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            DeleteCommand="DELETE FROM [room facility table] WHERE [facility_id] = @facility_id" 
            InsertCommand="INSERT INTO [room facility table] ([room_id], [facility]) VALUES (@room_id, @facility)" 
            ProviderName="<%$ ConnectionStrings:DatabaseConnectionString.ProviderName %>" 
            SelectCommand="SELECT [facility_id], [room_id], [facility] FROM [room facility table]" 
            UpdateCommand="UPDATE [room facility table] SET [room_id] = @room_id, [facility] = @facility WHERE [facility_id] = @facility_id">
            <DeleteParameters>
                <asp:Parameter Name="facility_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_id" Type="Int32" />
                <asp:Parameter Name="facility" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="room_id" Type="Int32" />
                <asp:Parameter Name="facility" Type="String" />
                <asp:Parameter Name="facility_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

