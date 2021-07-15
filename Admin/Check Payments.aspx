<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Payments.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <h1 align="center"> CHECK PAYEMNT</h1>

        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="payment_id" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None">
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
</asp:Content>

