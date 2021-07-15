<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Check Payments1.aspx.cs" Inherits="Admin_Check_Payments" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center"> CHECK PAYEMNT</h1>

        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="payment_id" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="1274px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="payment_id" HeaderText="payment_id" ReadOnly="True" 
                    SortExpression="payment_id" />
                <asp:BoundField DataField="booking_id" HeaderText="booking_id" 
                    SortExpression="booking_id" />
                <asp:BoundField DataField="amount" HeaderText="amount" 
                    SortExpression="amount" />
                <asp:BoundField DataField="cardtype" HeaderText="cardtype" 
                    SortExpression="cardtype" />
                <asp:BoundField DataField="cardnumber" HeaderText="cardnumber" 
                    SortExpression="cardnumber" />
                <asp:BoundField DataField="nameoncard" HeaderText="nameoncard" 
                    SortExpression="nameoncard" />
                <asp:BoundField DataField="expdate" HeaderText="expdate" 
                    SortExpression="expdate" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            DeleteCommand="DELETE FROM [payment] WHERE [payment_id] = @payment_id" 
            InsertCommand="INSERT INTO [payment] ([booking_id], [amount], [cardtype], [cardnumber], [nameoncard], [expdate]) VALUES (@booking_id, @amount, @cardtype, @cardnumber, @nameoncard, @expdate)" 
            ProviderName="<%$ ConnectionStrings:DatabaseConnectionString.ProviderName %>" 
            SelectCommand="SELECT [payment_id], [booking_id], [amount], [cardtype], [cardnumber], [nameoncard], [expdate] FROM [payment]" 
            UpdateCommand="UPDATE [payment] SET [booking_id] = @booking_id, [amount] = @amount, [cardtype] = @cardtype, [cardnumber] = @cardnumber, [nameoncard] = @nameoncard, [expdate] = @expdate WHERE [payment_id] = @payment_id">
            <DeleteParameters>
                <asp:Parameter Name="payment_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="booking_id" Type="Int32" />
                <asp:Parameter Name="amount" Type="Decimal" />
                <asp:Parameter Name="cardtype" Type="String" />
                <asp:Parameter Name="cardnumber" Type="Decimal" />
                <asp:Parameter Name="nameoncard" Type="String" />
                <asp:Parameter Name="expdate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="booking_id" Type="Int32" />
                <asp:Parameter Name="amount" Type="Decimal" />
                <asp:Parameter Name="cardtype" Type="String" />
                <asp:Parameter Name="cardnumber" Type="Decimal" />
                <asp:Parameter Name="nameoncard" Type="String" />
                <asp:Parameter Name="expdate" Type="String" />
                <asp:Parameter Name="payment_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
