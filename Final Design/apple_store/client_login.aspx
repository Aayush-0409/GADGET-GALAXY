<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="client_login.aspx.cs" Inherits="client_login" Title="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table border="0px" width="300px" height="200px" id="adminindex">
        <tr>
            <th align="center" colspan='2'>Login</th>
        </tr>
        <tr>
            <td colspan='2' style='color: darkred'>
                <asp:Label ID="Label1" runat="server" Text="Invalid User Name or Password"
                    Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <label>Username : </label>
                <asp:TextBox ID="TextBox2" runat="server" Style="border-radius: 10px;"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <label>Password : </label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Style="border-radius: 10px;"></asp:TextBox></td>
        </tr>
        <tr align="center">
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Style="border-radius: 10px; font-size: 15px;" />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Create a new account</asp:LinkButton>
                <br />
                <a href="admin_login.aspx">Admin</a>
            </td>
        </tr>
    </table>


</asp:Content>



