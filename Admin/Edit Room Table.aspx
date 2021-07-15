<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit Room Table.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
    <h1 align="center"> EDIT ROOM TABLE</h1>
      
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Roomid" 
                DataSourceID="SqlDataSource1" 
                EmptyDataText="There are no data records to display." Height="369px" 
                Width="1449px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="margin-right: 143px" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Roomid" HeaderText="Roomid" ReadOnly="True" 
                        SortExpression="Roomid" />
                    <asp:BoundField DataField="roomtype" HeaderText="roomtype" 
                        SortExpression="roomtype" />
                    <asp:BoundField DataField="description" HeaderText="description" 
                        SortExpression="description" />
                    <asp:BoundField DataField="roomrent" HeaderText="roomrent" 
                        SortExpression="roomrent" />
                    <asp:TemplateField HeaderText="image" SortExpression="image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="259px" 
                                ImageUrl='<%# Eval("image") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
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
                DeleteCommand="DELETE FROM [room table] WHERE [Roomid] = @Roomid" 
                InsertCommand="INSERT INTO [room table] ([roomtype], [description], [roomrent], [image]) VALUES (@roomtype, @description, @roomrent, @image)" 
                ProviderName="<%$ ConnectionStrings:DatabaseConnectionString.ProviderName %>" 
                SelectCommand="SELECT [Roomid], [roomtype], [description], [roomrent], [image] FROM [room table]" 
                UpdateCommand="UPDATE [room table] SET [roomtype] = @roomtype, [description] = @description, [roomrent] = @roomrent, [image] = @image WHERE [Roomid] = @Roomid">
                <DeleteParameters>
                    <asp:Parameter Name="Roomid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="roomtype" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="roomrent" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="roomtype" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="roomrent" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="Roomid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
    </div>
</asp:Content>

