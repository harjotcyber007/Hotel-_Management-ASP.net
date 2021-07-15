<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit Room Gallery1.aspx.cs" Inherits="Admin_Edit_Room_Gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <h1 align="center"> EDIT ROOM GALLERY </h1>
        <p align="center"> &nbsp;</p>
        <p align="center"> 
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="galleryid" 
                DataSourceID="SqlDataSource1" 
                EmptyDataText="There are no data records to display." Height="400px" 
                Width="700px" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="galleryid" HeaderText="galleryid" ReadOnly="True" 
                        SortExpression="galleryid" />
                    <asp:BoundField DataField="roomid" HeaderText="roomid" 
                        SortExpression="roomid" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    <asp:BoundField DataField="caption" HeaderText="caption" 
                        SortExpression="caption" />
                </Columns>
                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle ForeColor="#333333" BackColor="#FFFBD6" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
                DeleteCommand="DELETE FROM [room gallery table] WHERE [galleryid] = @galleryid" 
                InsertCommand="INSERT INTO [room gallery table] ([roomid], [image], [caption]) VALUES (@roomid, @image, @caption)" 
                ProviderName="<%$ ConnectionStrings:DatabaseConnectionString.ProviderName %>" 
                SelectCommand="SELECT [galleryid], [roomid], [image], [caption] FROM [room gallery table]" 
                UpdateCommand="UPDATE [room gallery table] SET [roomid] = @roomid, [image] = @image, [caption] = @caption WHERE [galleryid] = @galleryid">
                <DeleteParameters>
                    <asp:Parameter Name="galleryid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="roomid" Type="Int32" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="caption" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="roomid" Type="Int32" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="caption" Type="String" />
                    <asp:Parameter Name="galleryid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p align="center"> &nbsp;</p>
    </div>
    </form>
</body>
</html>
