<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Package Booking.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <h1 align="center"> Check Package Booking</h1>

        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataKeyNames="booking_id" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1257px" 
          Height="388px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" 
                    SortExpression="booking_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="PackageId" HeaderText="PackageId" 
                    SortExpression="PackageId" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            DeleteCommand="DELETE FROM [PackageBookingTable] WHERE [booking_id] = @booking_id" 
            InsertCommand="INSERT INTO [PackageBookingTable] ([booking_id], [name], [mobile], [email], [gender], [age], [city], [PackageId], [date], [time], [Status]) VALUES (@booking_id, @name, @mobile, @email, @gender, @age, @city, @PackageId, @date, @time, @Status)" 
            ProviderName="<%$ ConnectionStrings:DatabaseConnectionString.ProviderName %>" 
            SelectCommand="SELECT [booking_id], [name], [mobile], [email], [gender], [age], [city], [PackageId], [date], [time], [Status] FROM [PackageBookingTable]" 
            UpdateCommand="UPDATE [PackageBookingTable] SET [name] = @name, [mobile] = @mobile, [email] = @email, [gender] = @gender, [age] = @age, [city] = @city, [PackageId] = @PackageId, [date] = @date, [time] = @time, [Status] = @Status WHERE [booking_id] = @booking_id">
            <DeleteParameters>
                <asp:Parameter Name="booking_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="booking_id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="age" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="PackageId" Type="Int32" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="age" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="PackageId" Type="Int32" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="booking_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

