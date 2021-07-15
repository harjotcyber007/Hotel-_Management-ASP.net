<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Rooms Booking.aspx.cs" Inherits="Admin_Check_Rooms_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center"> Check Room Booking</h1>

    <table class="full-width">
        <tr>
            <td>
                Select the Room Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="roomtype" DataValueField="Roomid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
                    SelectCommand="SELECT [Roomid], [roomtype] FROM [room table]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="booking_id"
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" SortExpression="booking_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="room" HeaderText="room" SortExpression="room" />
            <asp:BoundField DataField="noofrooms" HeaderText="noofrooms" SortExpression="noofrooms" />
            <asp:BoundField DataField="noofperson" HeaderText="noofperson" SortExpression="noofperson" />
            <asp:BoundField DataField="idproof" HeaderText="idproof" SortExpression="idproof" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>"
        
        DeleteCommand="DELETE FROM [room booking] WHERE [booking_id] = @booking_id" InsertCommand="INSERT INTO [room booking] ([booking_id], [name], [mobile], [email_id], [room], [noofrooms], [noofperson], [idproof], [city], [age], [gender], [date], [time], [Status], [amount]) VALUES (@booking_id, @name, @mobile, @email_id, @room, @noofrooms, @noofperson, @idproof, @city, @age, @gender, @date, @time, @Status, @amount)"
        SelectCommand="SELECT [booking_id], [name], [mobile], [email_id], [room], [noofrooms], [noofperson], [idproof], [city], [age], [gender], [date], [time], [Status], [amount] FROM [room booking] WHERE ([room] = @room)"
        
        UpdateCommand="UPDATE [room booking] SET [name] = @name, [mobile] = @mobile, [email_id] = @email_id, [room] = @room, [noofrooms] = @noofrooms, [noofperson] = @noofperson, [idproof] = @idproof, [city] = @city, [age] = @age, [gender] = @gender, [date] = @date, [time] = @time, [Status] = @Status, [amount] = @amount WHERE [booking_id] = @booking_id">
        <DeleteParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="booking_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="room" Type="String" />
            <asp:Parameter Name="noofrooms" Type="Int32" />
            <asp:Parameter Name="noofperson" Type="Int32" />
            <asp:Parameter Name="idproof" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="amount" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Deluxe Room" Name="room" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="room" Type="String" />
            <asp:Parameter Name="noofrooms" Type="Int32" />
            <asp:Parameter Name="noofperson" Type="Int32" />
            <asp:Parameter Name="idproof" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="amount" Type="Decimal" />
            <asp:Parameter Name="booking_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

