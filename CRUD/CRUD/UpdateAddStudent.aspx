<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAddStudent.aspx.cs" Inherits="CRUD.UpdateAddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            width: 263px;
        }
        .auto-style4 {
            width: 263px;
        }
        .auto-style5 {
            height: 26px;
            width: 263px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 33px;
        }
        .auto-style9 {
            height: 26px;
            width: 118px;
        }
        .auto-style10 {
            width: 118px;
        }
        .auto-style12 {
            width: 126px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Update Student</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server">Select Student</asp:TextBox>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="txtFirstname" runat="server" Text="Firstname"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="txtSurname" runat="server" Text="Surname"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="intAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="txtIDno" runat="server" Text="Identity No"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="txtContactno" runat="server" Text="Contact No"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="txtEMail" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Enabled" runat="server" Text="Enabled"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:CheckBox runat="server" Text="[chkEnabled]" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12"><strong>
                    <asp:Label ID="Enabled0" runat="server" ForeColor="Red" Text="[lblError]"></asp:Label>
                    </strong></td>
                <td>
                    <asp:Button ID="btn_New" runat="server" Text="New" />
                    <asp:Button ID="btn_Undo" runat="server" OnClick="Button2_Click" Text="Undo" />
                    <asp:Button ID="btn_Update" runat="server" Text="Update" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
