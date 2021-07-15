<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center"> USER REGISTRATION</h1>




<table class="nav-justified">
    <tr>
        <td>
            USER NAME</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="223px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            PASSWORD</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="223px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            EMAIL ADDRESS</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="223px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            MOBILE NUMBER</td>
        <td class="style1">
            <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="226px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="SAVE" Height="39px" 
                onclick="Button1_Click" Width="227px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Already&nbsp; Exit ? <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/user login.aspx">lOGIN</asp:LinkButton>
        </td>
    </tr>
</table>




</asp:Content>

