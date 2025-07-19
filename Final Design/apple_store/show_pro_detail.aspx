<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="show_pro_detail.aspx.cs" Inherits="show_pro_detail" Title="Prodiuct Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 38%;
        }
        .style2
        {
            font-family: "Comic Sans MS";
            font-size: 20pt;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div class="img">
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" style="border-radius:10px" />
    <br />
    <br />
</div>
<div>
<table class="style1" cellspacing="10" border="1">
        <tr>
            <td align="right" class="style2">
                Name:</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Price</td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Category:</td>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        </table>
    
    <br />
    <br />
    <div style="margin-top:25px;">
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/add to cart.png" Height="54px" 
        onclick="ImageButton1_Click" Width="117px" />
        </div>
<%--    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
  <%--  <asp:Button ID="Button1" runat="server" Font-Size="18pt" 
        onclick="Button1_Click" Text="Purchase" />
    --%>
</div>
</div>
</asp:Content>

