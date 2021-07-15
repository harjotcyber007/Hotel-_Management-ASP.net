<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Restauranent Booking.aspx.cs" Inherits="Restauranent_Booking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>
    <h1 align="center">RESTAURANT BOOKING</h1>
        <p align="center">&nbsp;</p>

        <table class="style1" align="center">
            <tr>
                <td class="style2">
                    Restaurant Name</td>
                <td class="style2">
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
                <td class="style4">
                    Name</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="1234567890" TargetControlID="TextBox1">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="*Enter name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Mobile No</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox2" 
                        ValidChars="1234567890">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*Enter Mobile number" ControlToValidate="TextBox2" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    E mail</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="[];',/\/*-+{}" TargetControlID="TextBox3">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*Enter Correct Email " ControlToValidate="TextBox3" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Gender</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem Value="male">male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Age</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox5_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox5" 
                        ValidChars="1234567890">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="*Enter Age" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    City</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox6_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="1234567890-=[]{}\;',.//*-+" TargetControlID="TextBox6">
                    </cc1:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="*Enter City" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Date</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <cc1:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" 
                        TargetControlID="TextBox7">
                    </cc1:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="*Select Date" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Time</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="*Enter Time" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Book Table" Height="50px" Width="158px" />
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
                    &nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

