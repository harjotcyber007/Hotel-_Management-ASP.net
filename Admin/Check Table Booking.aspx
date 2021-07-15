<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Check Table Booking.aspx.cs" Inherits="Admin_Check_Table_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
    <h1 align="center"> Check Table Booking</h1>

    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="PackageType" HeaderText="PackageType" 
                SortExpression="PackageType" />
            <asp:BoundField DataField="image1" HeaderText="image1" 
                SortExpression="image1" />
            <asp:BoundField DataField="image2" HeaderText="image2" 
                SortExpression="image2" />
            <asp:BoundField DataField="image3" HeaderText="image3" 
                SortExpression="image3" />
            <asp:BoundField DataField="image4" HeaderText="image4" 
                SortExpression="image4" />
            <asp:BoundField DataField="image5" HeaderText="image5" 
                SortExpression="image5" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="description1" HeaderText="description1" 
                SortExpression="description1" />
            <asp:BoundField DataField="description2" HeaderText="description2" 
                SortExpression="description2" />
            <asp:BoundField DataField="description3" HeaderText="description3" 
                SortExpression="description3" />
            <asp:BoundField DataField="description4" HeaderText="description4" 
                SortExpression="description4" />
            <asp:BoundField DataField="description5" HeaderText="description5" 
                SortExpression="description5" />
            <asp:BoundField DataField="description6" HeaderText="description6" 
                SortExpression="description6" />
            <asp:BoundField DataField="description7" HeaderText="description7" 
                SortExpression="description7" />
            <asp:BoundField DataField="description8" HeaderText="description8" 
                SortExpression="description8" />
            <asp:BoundField DataField="description9" HeaderText="description9" 
                SortExpression="description9" />
            <asp:BoundField DataField="description10" HeaderText="description10" 
                SortExpression="description10" />
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
        DeleteCommand="DELETE FROM [PackageTable] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [PackageTable] ([PackageType], [image1], [image2], [image3], [image4], [image5], [Price], [description], [description1], [description2], [description3], [description4], [description5], [description6], [description7], [description8], [description9], [description10]) VALUES (@PackageType, @image1, @image2, @image3, @image4, @image5, @Price, @description, @description1, @description2, @description3, @description4, @description5, @description6, @description7, @description8, @description9, @description10)" 
        ProviderName="<%$ ConnectionStrings:DatabaseConnectionString.ProviderName %>" 
        SelectCommand="SELECT [id], [PackageType], [image1], [image2], [image3], [image4], [image5], [Price], [description], [description1], [description2], [description3], [description4], [description5], [description6], [description7], [description8], [description9], [description10] FROM [PackageTable]" 
        UpdateCommand="UPDATE [PackageTable] SET [PackageType] = @PackageType, [image1] = @image1, [image2] = @image2, [image3] = @image3, [image4] = @image4, [image5] = @image5, [Price] = @Price, [description] = @description, [description1] = @description1, [description2] = @description2, [description3] = @description3, [description4] = @description4, [description5] = @description5, [description6] = @description6, [description7] = @description7, [description8] = @description8, [description9] = @description9, [description10] = @description10 WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PackageType" Type="String" />
            <asp:Parameter Name="image1" Type="String" />
            <asp:Parameter Name="image2" Type="String" />
            <asp:Parameter Name="image3" Type="String" />
            <asp:Parameter Name="image4" Type="String" />
            <asp:Parameter Name="image5" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="description1" Type="String" />
            <asp:Parameter Name="description2" Type="String" />
            <asp:Parameter Name="description3" Type="String" />
            <asp:Parameter Name="description4" Type="String" />
            <asp:Parameter Name="description5" Type="String" />
            <asp:Parameter Name="description6" Type="String" />
            <asp:Parameter Name="description7" Type="String" />
            <asp:Parameter Name="description8" Type="String" />
            <asp:Parameter Name="description9" Type="String" />
            <asp:Parameter Name="description10" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PackageType" Type="String" />
            <asp:Parameter Name="image1" Type="String" />
            <asp:Parameter Name="image2" Type="String" />
            <asp:Parameter Name="image3" Type="String" />
            <asp:Parameter Name="image4" Type="String" />
            <asp:Parameter Name="image5" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="description1" Type="String" />
            <asp:Parameter Name="description2" Type="String" />
            <asp:Parameter Name="description3" Type="String" />
            <asp:Parameter Name="description4" Type="String" />
            <asp:Parameter Name="description5" Type="String" />
            <asp:Parameter Name="description6" Type="String" />
            <asp:Parameter Name="description7" Type="String" />
            <asp:Parameter Name="description8" Type="String" />
            <asp:Parameter Name="description9" Type="String" />
            <asp:Parameter Name="description10" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

