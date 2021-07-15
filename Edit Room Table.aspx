<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit Room Table.aspx.cs" Inherits="Edit_Room_Table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1 align="center"> EDIT ROOM TABLE </h1>
      
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Roomid" 
                DataSourceID="SqlDataSource1" 
                EmptyDataText="There are no data records to display." Height="369px" 
                Width="1449px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="margin-right: 143px" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px">
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
                            <asp:Image ID="Image1" runat="server" Height="276px" 
                                ImageUrl='<%# Eval("image") %>' Width="375px" />
                        </ItemTemplate>
                    </asp:TemplateField>
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

