<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center"> ADMIN LOGIN</h1>


<br />
<asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Admin/Default3.aspx" 
        Height="214px" Width="368px">
</asp:Login>


</asp:Content>

