<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user login.aspx.cs" Inherits="user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center"> USER LOGIN</h1>

<table class="nav-justified">
    <tr>
        <td>
            USER NAME</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="184px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            PASSWORD</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="181px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click" />
&nbsp;New User?
            <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/user registration.aspx">New Regsitartion</asp:LinkButton>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </td>
    </tr>
</table>

</asp:Content>

