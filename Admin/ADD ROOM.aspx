<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ADD ROOM.aspx.cs" Inherits="Admin_ADD_ROOM" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 514px;
        height: 349px;
    }
        .style2
        {
        width: 612px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <h1 align="center"> ADD ROOM</h1>


        <br />
        <table class="style1">
            <tr>
                <td>
                    Room Type</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="#FF3399" Height="24px" 
                        Width="123px"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="0987654321-=[];'/.," TargetControlID="TextBox1">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="                    Enter Room Type" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Description</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="123px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" 
                        ErrorMessage="                    Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Room Rent</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged" 
                        Height="30px" Width="132px"></asp:TextBox>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox3" 
                        ValidChars="0987654321">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox3" 
                        ErrorMessage="                    Enter Room Rent" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Image</td>
                <td class="style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="Must Attach Image" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD ROOM " />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>

