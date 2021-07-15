<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Booking Room.aspx.cs" Inherits="Booking_Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" style="border-style: double">
    <h1 align="center"> Booking For Room</h1>

        <br />
        <table class="style1">
            <tr>
                <td class="style3">
                    ROOM TYPE</td>
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
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Red"></asp:TextBox>
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
                <td class="style2">
                    NUMBER OF ROOMS</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="*Enter Number Of Rooms" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    NUMBER OF PERSONS</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="*Select Number Of Person" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    ID PROOF>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="*Must enter ID Proof" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem Selected="True">SELECT</asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="*Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    DATE</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*Enter Date Of Booking" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
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
                    STATUS</td>
                <td>
                    Undefined</td>
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

</asp:Content>

