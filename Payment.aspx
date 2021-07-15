<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
    <h1 align="center">PAYMENT </h1>

        <br />
        <table class="style1">
            <tr>
                <td>
                    Booking&nbsp; Id</td>
                <td>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    Amount</td>
                <td>
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Card Type</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select </asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="*Select Card Type" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Card Number</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="16"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox1" 
                        ValidChars="1234567890">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*Enter Card Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Name On Card</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="1234567890-=\][';/.,/*-+" TargetControlID="TextBox2">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*Enter Name on Card" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Exp Date</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <cc1:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBox3">
                    </cc1:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*Enter Exp Date" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Cvv Code</td>
                <td class="style3">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" MaximumValue="999" 
                        MinimumValue="000"></asp:RangeValidator>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox4" 
                        ValidChars="1234567890">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*Enter CVV Code" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Pay Now" Height="45px" Width="161px" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

