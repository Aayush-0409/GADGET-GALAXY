<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="add_prouct" Title="Add Product" %>

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
        {        margin-left: 120px;
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
            <td class="style4" align="center">
                <asp:Label ID="Label1" runat="server" Text="Product ID:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style2" align="center">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="true"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" align="center">
                <asp:Label ID="Label2" runat="server" Text="Product Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="style2" align="center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label3" runat="server" Text="Product Image:" ForeColor="Black"></asp:Label>
            </td>
            <td align="center" class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label4" runat="server" Text="Product Descrption:" ForeColor="Black"></asp:Label>
            </td>
            <td align="center" class="style3">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label5" runat="server" Text="Product Price:" ForeColor="Black"></asp:Label>
            </td>
            <td align="center" class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label7" runat="server" Text="Catagory Name:" ForeColor="Black"></asp:Label>
            </td>
            <td align="center" class="style3">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>---Select Here---</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3" colspan="2">
                <asp:Button ID="Button1" runat="server" Font-Size="20px" Text="Submit"
                    OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>

