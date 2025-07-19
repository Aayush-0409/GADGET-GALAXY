<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_brand.aspx.cs" Inherits="add_brand" Title="Add Brand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 51%;
        }
        .style2
        {
            width: 455px;
        }
        .style3
        {
        }
        .style4
        {
            width: 484px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1" border="1" cellpadding="5" cellspacing="10" 
        id="adminprouducttable">
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Brand ID:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Brand Name:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3" colspan="2">
                <asp:Button ID="Button1" runat="server" Font-Size="20px" 
                    onclick="Button1_Click" Text="Submit" />
            </td>
        </tr>
    </table>

</asp:Content>
