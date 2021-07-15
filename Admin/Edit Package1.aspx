<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit Package1.aspx.cs" Inherits="Admin_Edit_Package" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 2030px; width: 2014px">
    <h1 align="center"> EDIT PACKAGE</h1>

        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." CellPadding="3" 
            Height="1840px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
            BorderWidth="1px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="PackageType" HeaderText="PackageType" 
                    SortExpression="PackageType" />
                <asp:TemplateField HeaderText="image1" SortExpression="image1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="120px" 
                            ImageUrl='<%# Eval("image1") %>' Width="226px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="image2" SortExpression="image2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("image2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("image2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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

    </div>
    </form>
</body>
</html>
