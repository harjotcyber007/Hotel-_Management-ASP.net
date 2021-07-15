<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Check Booking status1.aspx.cs" Inherits="Check_Booking_status" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center"> Check Booking Status</h1>

        <table class="style1">
            <tr>
                <td>
                    ENTER THE BOOKING NUMBER</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="CHECK" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="booking_id" DataSourceID="SqlDataSource1" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Height="229px" Width="1272px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" 
                    SortExpression="booking_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" 
                    SortExpression="email_id" />
                <asp:BoundField DataField="room" HeaderText="room" SortExpression="room" />
                <asp:BoundField DataField="noofrooms" HeaderText="noofrooms" 
                    SortExpression="noofrooms" />
                <asp:BoundField DataField="noofperson" HeaderText="noofperson" 
                    SortExpression="noofperson" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="amount" HeaderText="amount" 
                    SortExpression="amount" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT [booking_id], [name], [mobile], [email_id], [room], [noofrooms], [noofperson], [time], [date], [Status], [amount] FROM [room booking] WHERE ([booking_id] = @booking_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="booking_id" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
