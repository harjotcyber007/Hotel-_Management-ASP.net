<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit Resturant.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>
    <h1 align="center" class=" "> EDIT RESTAURANTS </h1>
        <p align="center" class=" "> 
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                DataSourceID="SqlDataSource1" 
                EmptyDataText="There are no data records to display." ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="ResturantType" HeaderText="ResturantType" 
                        SortExpression="ResturantType" />
                    <asp:TemplateField HeaderText="image1" SortExpression="image1">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image1") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="171px" 
                                ImageUrl='<%# Eval("image1") %>' Width="233px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="image2" SortExpression="image2">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("image2") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="114px" 
                                ImageUrl='<%# Eval("image2") %>' Width="206px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="image3" SortExpression="image3">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("image3") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" Height="127px" 
                                ImageUrl='<%# Eval("image3") %>' Width="212px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="image4" SortExpression="image4">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("image4") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image4" runat="server" Height="131px" 
                                ImageUrl='<%# Eval("image4") %>' Width="199px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="image5" SortExpression="image5">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("image5") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image5" runat="server" Height="125px" 
                                ImageUrl='<%# Eval("image5") %>' Width="196px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="image6" SortExpression="image6">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("image6") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image6" runat="server" Height="128px" 
                                ImageUrl='<%# Eval("image6") %>' Width="200px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="description" HeaderText="description" 
                        SortExpression="description" />
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
                DeleteCommand="DELETE FROM [ResturantTable] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [ResturantTable] ([ResturantType], [image1], [image2], [image3], [image4], [image5], [image6], [Price], [description]) VALUES (@ResturantType, @image1, @image2, @image3, @image4, @image5, @image6, @Price, @description)" 
                ProviderName="<%$ ConnectionStrings:DatabaseConnectionString.ProviderName %>" 
                SelectCommand="SELECT [id], [ResturantType], [image1], [image2], [image3], [image4], [image5], [image6], [Price], [description] FROM [ResturantTable]" 
                UpdateCommand="UPDATE [ResturantTable] SET [ResturantType] = @ResturantType, [image1] = @image1, [image2] = @image2, [image3] = @image3, [image4] = @image4, [image5] = @image5, [image6] = @image6, [Price] = @Price, [description] = @description WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ResturantType" Type="String" />
                    <asp:Parameter Name="image1" Type="String" />
                    <asp:Parameter Name="image2" Type="String" />
                    <asp:Parameter Name="image3" Type="String" />
                    <asp:Parameter Name="image4" Type="String" />
                    <asp:Parameter Name="image5" Type="String" />
                    <asp:Parameter Name="image6" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ResturantType" Type="String" />
                    <asp:Parameter Name="image1" Type="String" />
                    <asp:Parameter Name="image2" Type="String" />
                    <asp:Parameter Name="image3" Type="String" />
                    <asp:Parameter Name="image4" Type="String" />
                    <asp:Parameter Name="image5" Type="String" />
                    <asp:Parameter Name="image6" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p align="center" class=" "> &nbsp;</p>
    </div>
</asp:Content>

