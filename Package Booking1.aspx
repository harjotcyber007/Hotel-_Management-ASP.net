<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Package Booking1.aspx.cs" Inherits="Package_Booking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center" 
            style="font-weight: bold; text-decoration: underline; text-transform: capitalize"> Booking For Packages</h1>

        <br />
        <table class="style1">
            <tr>
                <td class="style3">
                    PACKAGE TYPE</td>
                <td class="style3">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    BOOKING AMOUNT</td>
                <td>
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    NAME</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Red"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="                   *Enter Name" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    MOBILE</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Red" 
                        ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage=" *Enter 10 Digit Number" 
                        ForeColor="Red" MaximumValue="9999999999" MinimumValue="6000000000" 
                        Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    EMAIL ID</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*Enter Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
         
            <tr>
                <td>
                    CITY</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="*Must Enter City" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    AGE</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*Must Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    GENDER</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    DATE</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBox7">
                    </cc1:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*Enter Date Of Booking" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td>
                    TIME</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="*Enter Booking Time" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="BOOKING CONFIRMATION" />
                </td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
